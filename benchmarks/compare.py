#!/usr/bin/env python3
"""Interleave old/current kernels in one timed process, with shared work counts."""
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
parser.add_argument('--baseline',default='v0.2.0')
parser.add_argument('--compiler',action='append',choices=['dmd','ldc2'])
parser.add_argument('--samples',type=int,default=7)
parser.add_argument('--target-ms',type=int,default=50)
parser.add_argument('--size',type=int,default=65536)
parser.add_argument('--seed',type=int,default=123456789)
parser.add_argument('--output',type=pathlib.Path,default=root/'benchmarks/results/optimization-paired')
args=parser.parse_args()
if min(args.samples,args.target_ms,args.size)<1 or not 0<args.seed<2**32:
    parser.error('positive sample/time/size and nonzero uint seed required')
args.output.mkdir(parents=True,exist_ok=True)

def run(command,cwd,timeout=120):
    p=subprocess.run(list(map(str,command)),cwd=cwd,capture_output=True,text=True,timeout=timeout)
    if p.returncode:raise RuntimeError(' '.join(map(str,command))+'\n'+p.stdout+p.stderr)
    return p.stdout

def digest(content):return hashlib.sha256(content.encode()).hexdigest()

old_revision=run(['git','rev-parse',args.baseline+'^{commit}'],root).strip()
old_source=run(['git','show',old_revision+':source/error_d.d'],root)
new_source=(root/'source/error_d.d').read_text()
kernels=(root/'benchmarks/kernels.d').read_text()
old_module=old_source.replace('module error_d;','module error_d_baseline;',1).replace('error_d.','error_d_baseline.')
old_kernels=kernels.replace('module kernels;','module kernels_before;',1).replace('import error_d;','import error_d_baseline;',1)
functions=['result_small','status_out_small','status_ref_small','result_large','status_out_large','status_ref_large','pipeline_result','pipeline_status']
for name in functions:
    pattern=r'(extern\(C\)\s+\w+\s+'+name+r'\()'
    old_kernels,count=re.subn(pattern,'pragma(mangle, "before_'+name+'")\n'+r'\1',old_kernels)
    if count!=1:raise RuntimeError('cannot isolate baseline symbol '+name)

# Generate from the same loop/timing protocol instead of maintaining two subtly
# different benchmark loops. Each old/current pair is adjacent in rotating order.
driver=(root/'benchmarks/runtime.d').read_text()
def change(old,new):
    global driver
    if old not in driver:raise RuntimeError('timing protocol changed: '+old)
    driver=driver.replace(old,new)
change('module benchmark_runtime;','module benchmark_paired;\nimport before_kernels = kernels_before;')
change('loop(uint variant)(', 'loop(uint variant, bool baseline)(')
start=driver.index('    ulong checksum;')
aliases='    static if (baseline)\n    {\n'+''.join('        alias '+name+' = before_kernels.'+name+';\n' for name in functions)+'''        alias DomainError = before_kernels.DomainError;
        alias Block = before_kernels.Block;
    }
'''
driver=driver[:start]+aliases+driver[start:]
change('static foreach(index;0..8)', 'static foreach(index;0..16)')
change('return loop!index(input,threshold,batches);','return loop!(index/2, (index%2)==1)(input,threshold,batches);')
a=driver.index('    immutable string[] names=');b=driver.index('\n    GC.disable();',a)
driver=driver[:a]+'    immutable string[] names='+json.dumps([name for name in functions for _ in range(2)])+';'+driver[b:]
change('variant<3 ? 0 : variant<6 ? 1 : 2','(variant/2)<3 ? 0 : (variant/2)<6 ? 1 : 2')
change('row["kind"]="runtime";', 'row["kind"]="runtime";row["implementation"]=(variant%2)==0 ? "after" : "before";')
(args.output/'paired-runtime.d').write_text(driver)
cpu=min(os.sched_getaffinity(0))
metadata=dict(utc_recorded_at=datetime.datetime.now(datetime.timezone.utc).isoformat(),
    head=run(['git','rev-parse','HEAD'],root).strip(),baseline_revision=old_revision,
    before_source_sha256=digest(old_source),after_source_sha256=digest(new_source),
    transformed_before_sha256=digest(old_module),kernel_sha256=digest(kernels),
    base_driver_sha256=digest((root/'benchmarks/runtime.d').read_text()),
    paired_driver_sha256=digest(driver),platform=platform.platform(),logical_cpu=cpu,
    samples=args.samples,target_ms=args.target_ms,seed=args.seed,input_count=args.size,
    cpuinfo=run(['lscpu'],root),compilers={})
records=[]
for compiler in args.compiler or ['dmd','ldc2']:
    flags=['-de','-release','-preview=dip1000','-boundscheck=on']+(['-O','-inline'] if compiler=='dmd' else ['-O3'])
    metadata['compilers'][compiler]=dict(version=run([compiler,'--version'],root),flags=flags)
    with tempfile.TemporaryDirectory(prefix='error-d-paired-') as directory:
        work=pathlib.Path(directory)
        (work/'error_d.d').write_text(new_source)
        (work/'error_d_baseline.d').write_text(old_module)
        (work/'kernels.d').write_text(kernels)
        (work/'kernels_before.d').write_text(old_kernels)
        (work/'paired.d').write_text(driver)
        base=[compiler,*flags,'-I'+str(work)]
        objects=[]
        for module in ['kernels','kernels_before']:
            obj=work/(module+'.o');objects.append(obj)
            run([*base,'-c','-of='+str(obj),work/(module+'.d')],work)
        binary=work/'paired'
        run([*base,'-of='+str(binary),work/'paired.d',work/'error_d.d',work/'error_d_baseline.d',*objects],work)
        output=run(['taskset','-c',cpu,binary,args.samples,args.target_ms,args.seed,args.size],work,timeout=300)
        rows=[json.loads(line) for line in output.splitlines()]
        for row in rows:
            row['compiler']=compiler
            per_op=[sample/row['operations'] for sample in row['samples_ns']]
            row['median_ns_per_op']=statistics.median(per_op)
            row['mad_ns_per_op']=statistics.median(abs(x-row['median_ns_per_op']) for x in per_op)
            row['min_ns_per_op']=min(per_op);row['max_ns_per_op']=max(per_op)
        for threshold in [0,3,128,256]:
            for family in [functions[:3],functions[3:6],functions[6:]]:
                selected=[r for r in rows if r['threshold']==threshold and r['kernel'] in family]
                if len(selected)!=2*len(family) or len({(r['operations'],r['checksum']) for r in selected})!=1:
                    raise RuntimeError('paired work counts or checksums differ')
        records+=rows
        (args.output/'measurements.json').write_text(json.dumps(records,indent=2)+'\n')
        (args.output/'metadata.json').write_text(json.dumps(metadata,indent=2)+'\n')
        print(f'{compiler}: interleaved before/after work and checksums agree',flush=True)
print(args.output)
