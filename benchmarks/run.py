#!/usr/bin/env python3
"""Build comparable optimized kernels, validate results, retain raw cost evidence."""
import argparse
import datetime
import hashlib
import json
import os
import pathlib
import platform
import re
import statistics
import subprocess
import tempfile

root=pathlib.Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('--compiler',action='append',choices=['dmd','ldc2'])
parser.add_argument('--output',type=pathlib.Path,default=root/'benchmarks/results/local')
parser.add_argument('--samples',type=int,default=7)
parser.add_argument('--target-ms',type=int,default=50)
parser.add_argument('--seed',type=int,default=123456789)
parser.add_argument('--size',type=int,default=65536)
args=parser.parse_args()
if args.samples<1 or args.target_ms<1 or args.size<1 or not 0<args.seed<2**32:
    parser.error('positive sample/time/size and nonzero uint seed required')
args.output.mkdir(parents=True,exist_ok=True)
# Pin benchmark processes, not the parent shell or the user's system policy.
cpu=min(os.sched_getaffinity(0))
all_records=[]
metadata={
    'utc_recorded_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'head':subprocess.check_output(['git','rev-parse','HEAD'],cwd=root,text=True).strip(),
    'source_sha256':hashlib.sha256((root/'source/error_d.d').read_bytes()).hexdigest(),
    'working_tree_status':subprocess.check_output(['git','status','--short'],cwd=root,text=True),
    'kernel_sha256':hashlib.sha256((root/'benchmarks/kernels.d').read_bytes()).hexdigest(),
    'driver_sha256':hashlib.sha256((root/'benchmarks/runtime.d').read_bytes()).hexdigest(),
    'platform':platform.platform(),'logical_cpu':cpu,'samples':args.samples,
    'target_ms':args.target_ms,'seed':args.seed,'input_count':args.size,
    'cpuinfo':subprocess.check_output(['lscpu'],text=True),'compilers':{},
}

def run(command,cwd,timeout=120):
    completed=subprocess.run(list(map(str,command)),cwd=cwd,text=True,capture_output=True,timeout=timeout)
    if completed.returncode:
        raise RuntimeError(' '.join(map(str,command))+'\n'+completed.stdout+completed.stderr)
    return completed.stdout

for compiler in args.compiler or ['dmd','ldc2']:
    flags=['-de','-release','-preview=dip1000','-boundscheck=on']
    flags+=['-O','-inline'] if compiler=='dmd' else ['-O3']
    metadata['compilers'][compiler]={'version':run([compiler,'--version'],root),'flags':flags}
    with tempfile.TemporaryDirectory(prefix='error-d-cost-') as directory:
        work=pathlib.Path(directory)
        base=[compiler,*flags,'-I'+str(root/'source'),'-I'+str(root/'benchmarks')]
        # Separate object, no LTO, no-inline entry functions: retain API boundary.
        obj=work/'kernels.o'
        run([*base,'-c','-of='+str(obj),root/'benchmarks/kernels.d'],work)
        disassembly=run(['objdump','-drwC',obj],work)
        (args.output/(compiler+'-kernels.asm')).write_text(disassembly)
        symbols=run(['nm','-S','--defined-only',obj],work)
        (args.output/(compiler+'-symbols.txt')).write_text(symbols)
        # Include weak COMDAT functions (DMD), not just strong text symbols.
        functions={}
        for line in run(['readelf','-sW',obj],work).splitlines():
            fields=line.split()
            if len(fields)>=8 and fields[3]=='FUNC' and fields[6]!='UND':
                functions[fields[7]]=(fields[6],int(fields[1],16),int(fields[2]))
        graph={};external={};current=None
        for line in run(['objdump','-drw',obj],work).splitlines():
            header=re.match(r'^[0-9a-f]+ <(.+)>:$',line)
            if header:
                current=header.group(1);graph.setdefault(current,set());external.setdefault(current,set())
            relocation=re.search(r'R_X86_64_(PLT32|PC32)\s+(\S+)',line)
            if current and relocation:
                target=re.sub(r'[+-]0x[0-9a-f]+$','',relocation.group(2))
                if target in functions:graph[current].add(target)
                elif relocation.group(1)=='PLT32':external[current].add(target)
        entries={'result_small','status_out_small','status_ref_small','result_large',
                 'status_out_large','status_ref_large','pipeline_result','pipeline_status'}
        for entry in sorted(entries):
            seen=set();pending=[entry];unresolved=set()
            while pending:
                symbol=pending.pop()
                if symbol in seen:continue
                seen.add(symbol);pending.extend(graph.get(symbol,set())-seen)
                unresolved.update(external.get(symbol,set()))
            extents={functions[symbol] for symbol in seen if symbol in functions}
            all_records.append({'kind':'code_size','compiler':compiler,'kernel':entry,
                'entry_bytes':functions[entry][2],
                'reachable_object_function_bytes':sum(extent[2] for extent in extents),
                'reachable_function_extents':len(extents),
                'external_call_symbols':sorted(unresolved)})
        for name in ['verify','runtime','metrics']:
            binary=work/name
            run([*base,'-of='+str(binary),root/'benchmarks'/(name+'.d'),
                 root/'source/error_d.d',obj],work)
            arguments=[str(args.samples),str(args.target_ms),str(args.seed),str(args.size)] if name=='runtime' else []
            output=run(['taskset','-c',str(cpu),binary,*arguments],work,timeout=300)
            rows=[json.loads(line) for line in output.splitlines()]
            for row in rows:
                row['compiler']=compiler
                if row['kind']=='runtime':
                    ns_per_op=[sample/row['operations'] for sample in row['samples_ns']]
                    row['median_ns_per_op']=statistics.median(ns_per_op)
                    row['min_ns_per_op']=min(ns_per_op)
                    row['max_ns_per_op']=max(ns_per_op)
                    row['mad_ns_per_op']=statistics.median(abs(x-row['median_ns_per_op']) for x in ns_per_op)
                all_records.append(row)
            print(f'{compiler}: {name} collected',flush=True)
    runtime=[row for row in all_records if row['compiler']==compiler and row['kind']=='runtime']
    for threshold in [0,3,128,256]:
        for family in [['result_small','status_out_small','status_ref_small'],
                       ['result_large','status_out_large','status_ref_large'],
                       ['pipeline_result','pipeline_status']]:
            rows=[row for row in runtime if row['threshold']==threshold and row['kernel'] in family]
            if len(rows)!=len(family) or len({(r['operations'],r['checksum']) for r in rows})!=1:
                raise RuntimeError('non-equivalent benchmark results: '+repr(rows))
    print(f'{compiler}: family checksums and work counts agree',flush=True)
    # Save after each compiler, including raw sample arrays rather than just a ratio.
    (args.output/'measurements.json').write_text(json.dumps(all_records,indent=2)+'\n')
    (args.output/'metadata.json').write_text(json.dumps(metadata,indent=2)+'\n')
print(args.output)
