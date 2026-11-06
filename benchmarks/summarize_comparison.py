#!/usr/bin/env python3
"""Summarize interleaved runtime evidence plus independent layout/code snapshots."""
import argparse
import json
import os
import pathlib

root=pathlib.Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser()
p.add_argument('--before',type=pathlib.Path,default=root/'benchmarks/results/optimization-before')
p.add_argument('--after',type=pathlib.Path,default=root/'benchmarks/results/optimization-after')
p.add_argument('--paired',type=pathlib.Path,default=root/'benchmarks/results/optimization-paired')
p.add_argument('--output',type=pathlib.Path,default=root/'docs/performance-optimization.md')
a=p.parse_args()
def load(folder,file):return json.loads((folder/file).read_text())
before=load(a.before,'measurements.json');after=load(a.after,'measurements.json')
paired=load(a.paired,'measurements.json');meta=load(a.paired,'metadata.json')
assert meta['before_source_sha256']==load(a.before,'metadata.json')['source_sha256']
assert meta['after_source_sha256']==load(a.after,'metadata.json')['source_sha256']
assert len(paired)==128
for folder in [a.before,a.after]:
    m=load(folder,'metadata.json')
    assert m['kernel_sha256']==meta['kernel_sha256']
    assert m['driver_sha256']==meta['base_driver_sha256']
    assert m['seed']==meta['seed'] and m['input_count']==meta['input_count']
    assert m['compilers']==meta['compilers']
def link(folder,name):return pathlib.Path(os.path.relpath(folder/name,a.output.parent)).as_posix()
def row(compiler,kernel,threshold,implementation):
    return next(r for r in paired if r['compiler']==compiler and r['kernel']==kernel
                and r['threshold']==threshold and r['implementation']==implementation)
def ns(r):return f"{r['median_ns_per_op']:.2f} ({r['mad_ns_per_op']:.2f})"
lines=['# v0.3 performance optimization', '', 'Tracking: #17. Baseline is v0.2.0; the candidate adds the narrowly selected',
       'pointer-free storage path documented in [ADR 0005](decisions/0005-trivial-storage.md).', '',
       '## What changed', '',
       '- Pointer-free, hook-free, assignable payloads without alias-this use a private',
       '  data-only union and tag. Resources, pointers, slices, custom assignment/copy',
       '  hooks and qualified payload fields keep the v0.2 SumType path.',
       '- Direct active-member construction avoids destructive move chains and',
       '  initialization/copies of a large inactive union. Trivial Result instances',
       '  use compiler-generated copies and can return in registers.',
       '- Checked trivial getters and inline/single-expression combinators reduce',
       '  dispatch overhead. Unchanged trivial outcomes can be forwarded directly.',
       '  Contract failure remains unconditional and is now explicitly noreturn.', '',
       'Source API is unchanged; binary calling conventions can change. Recompile',
       'every D consumer against one library version. No generic ABI compatibility',
       'with v0.2 is claimed. Inactive bytes are unspecified; raw serialization,',
       'bytewise equality and zeroization are not part of the Result contract.', '',
       '## Comparison method', '', '```sh',
       'python3 benchmarks/run.py --source-revision v0.2.0 --output /tmp/error-before',
       'python3 benchmarks/run.py --output /tmp/error-after',
       'python3 benchmarks/compare.py --output /tmp/error-paired',
       'python3 benchmarks/summarize_comparison.py --before /tmp/error-before --after /tmp/error-after --paired /tmp/error-paired --output /tmp/error-comparison.md',
       '```', '',
       f"The baseline source is `{meta['baseline_revision']}`; the candidate source was",
       f"recorded at `{meta['head']}`. [Metadata]({link(a.paired,'metadata.json')})",
       'contains both source hashes, the original and generated timing-driver hashes,',
       'compiler versions/flags, CPU information and the raw UTC timestamp.', '',
       'The main runtime results are **interleaved in one process**, not ratios of',
       'separate sessions. The baseline module and C symbols are renamed solely to',
       'link old/new producers together; both get the same benchmark source, compiler',
       'flags, input data, batch salt and operation counts. Old/new variants are',
       'adjacent in rotating sampling order. The generated [paired driver]('+link(a.paired,'paired-runtime.d')+')',
       'is retained for inspection. A compiler-visible atomic sink keeps complete',
       'timed calls observable; no counters are inserted into the kernels.', '',
       f"There are {meta['samples']} samples per case, a {meta['target_ms']} ms slowest-family calibration",
       f"target and {meta['input_count']} xorshift inputs (seed {meta['seed']}). Checksums/work counts",
       'must agree across both implementations and all status controls in a family.',
       'Separate verification compares every large-payload word and both error fields.',
       'DMD 2.111.0 uses -release -O -inline; LDC 1.42.0 uses -release -O3.',
       'Both retain -de, DIP1000 and bounds checks. No LTO; no-inline public producer',
       'entry points preserve the API boundary. Runs use one logical CPU on the',
       'same i7-9750H laptop, without changing governor/turbo settings.', '',
       'Independent before/after runs provide code/layout/copy evidence below;',
       'their timings are retained but are not used for the primary speedup tables.', '',
       '## Interleaved runtime: median (MAD), ns/op', '',
       'Speedup = old Result time / new Result time. Below 1 means a slower row.',
       'Initial failures are the input threshold; the pipeline has an additional',
       'second-stage error check in both versions. MAD is not a confidence interval.', '']
regressions=[]
for compiler in ['dmd','ldc2']:
    lines += [f'### {compiler}', '', '| Family | Initial failures | v0.2 Result | New Result | Speedup | Status/out old → new | New Result/out |',
              '| --- | ---: | ---: | ---: | ---: | ---: | ---: |']
    for family,kernel,control in [('small','result_small','status_out_small'),('256-byte','result_large','status_out_large'),('pipeline','pipeline_result','pipeline_status')]:
        for threshold in [0,3,128,256]:
            old=row(compiler,kernel,threshold,'before');new=row(compiler,kernel,threshold,'after')
            co=row(compiler,control,threshold,'before');cn=row(compiler,control,threshold,'after')
            ratio=old['median_ns_per_op']/new['median_ns_per_op']
            rel=new['median_ns_per_op']/cn['median_ns_per_op']
            rate={0:'0%',3:'1.17%',128:'50%',256:'100%'}[threshold]
            lines.append(f"| {family} | {rate} | {ns(old)} | {ns(new)} | {ratio:.2f}× | {co['median_ns_per_op']:.2f} → {cn['median_ns_per_op']:.2f} | {rel:.2f}× |")
            if ratio<1:
                regressions.append(f"- {compiler}, {family}, {rate} initial failures: {old['median_ns_per_op']:.2f} → {new['median_ns_per_op']:.2f} ns/op ({(1/ratio-1)*100:.1f}% slower in this run).")
    lines += ['']
lines += ['### Regressions and interpretation', '']
lines += regressions or ['No slower Result row was measured in this run; this does not prove absence of regressions elsewhere.']
lines += ['', 'DMD improves substantially on the tested trivial workloads; LDC gains are',
          'smaller, and successful large values were already close to the status/out',
          'baseline. The remaining Result/out column is the residual cost, not a',
          'claim that Result is now universally free. Small control timings can vary',
          'with code layout and scheduling even in one process; every control row and',
          'sample is retained. The all-error LDC pipeline case must not be hidden by',
          'quoting only successful cases. Error paths and other payload shapes may',
          'benefit differently.', '',
          '## Layout and copy counts', '',
          '| Compiler | Payload | Result before | Result after |',
          '| --- | --- | ---: | ---: |']
for compiler in ['dmd','ldc2']:
    for payload in ['ulong','block256','void','instrumented_counted']:
        b=next(r for r in before if r['kind']=='size' and r['compiler']==compiler and r['payload']==payload)
        n=next(r for r in after if r['kind']=='size' and r['compiler']==compiler and r['payload']==payload)
        lines.append(f"| {compiler} | {payload} | {b['result_bytes']} | {n['result_bytes']} |")
lines += ['', 'The instrumented Counted payload has a pointer, postblit and destructor,',
          'so it deliberately remains on the general path. Per-operation postblit counts',
          'are unchanged: temporary factory/take 0; lvalue factory, value, map, match,',
          'whole-result copy, assignment and status/out assignment each 1. This does',
          'not count machine-level copies of trivial types. All original ownership',
          'and adversarial regressions remain required.', '',
          '## Generated code: entry / reachable in-object function bytes', '',
          '| Compiler | Kernel | Before | After |', '| --- | --- | ---: | ---: |']
for compiler in ['dmd','ldc2']:
    for kernel in ['result_small','result_large','pipeline_result']:
        b=next(r for r in before if r['kind']=='code_size' and r['compiler']==compiler and r['kernel']==kernel)
        n=next(r for r in after if r['kind']=='code_size' and r['compiler']==compiler and r['kernel']==kernel)
        lines.append(f"| {compiler} | {kernel} | {b['entry_bytes']} / {b['reachable_object_function_bytes']} | {n['entry_bytes']} / {n['reachable_object_function_bytes']} |")
lines += ['', 'The small POD result now uses a register return; DMD no longer calls the',
          'move/SumType construction chain for that producer. Entry bytes alone can',
          'grow when helper calls are inlined; reachable bytes include deduplicated',
          'functions in the kernel object. External callees, caller-side code and',
          'final linker/alignment effects are excluded. See the full disassembly and',
          'symbols in the source snapshots; no executable-size claim is inferred.', '',
          '## Evidence and limits', '',
          '- [Paired samples]('+link(a.paired,'measurements.json')+') and [metadata]('+link(a.paired,'metadata.json')+').',
          '- [Before snapshot]('+pathlib.Path(os.path.relpath(a.before,a.output.parent)).as_posix()+') and [after snapshot]('+pathlib.Path(os.path.relpath(a.after,a.output.parent)).as_posix()+'): compiler flags, sizes, copies, symbols and disassembly.',
          '- [Fast-path design and safety boundary](decisions/0005-trivial-storage.md).', '',
          'Limitations: synthetic arithmetic/static arrays, one machine, one primary',
          'interleaved run per compiler, background work/SMT/frequency/thermal effects',
          'not controlled. Symbol renaming/link layout can affect tiny timings. No',
          'production parser/I/O speedup or independent safety audit is claimed.',
          'Pointer-bearing/resources/custom-hook types retain the general backend;',
          'their runtime performance was not established by these trivial kernels.',
          'CI checks both backend behaviors and benchmark correctness/smoke operation,',
          'not a speedup threshold. All D objects must be rebuilt; generic Result binary',
          'compatibility with v0.2 is not part of this release.', '']
a.output.parent.mkdir(parents=True,exist_ok=True)
a.output.write_text('\n'.join(lines)+'\n')
print(a.output)
