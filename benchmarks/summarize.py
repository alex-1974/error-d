#!/usr/bin/env python3
"""Render measured tables without replacing raw samples by selected best runs."""
import argparse
import json
import os
import pathlib

root=pathlib.Path(__file__).resolve().parents[1]
parser=argparse.ArgumentParser()
parser.add_argument('--input',type=pathlib.Path,default=root/'benchmarks/results/desktop-x86_64')
parser.add_argument('--output',type=pathlib.Path,default=root/'docs/performance.md')
args=parser.parse_args()
records=json.loads((args.input/'measurements.json').read_text())
meta=json.loads((args.input/'metadata.json').read_text())
relative=pathlib.Path(os.path.relpath(args.input,args.output.parent)).as_posix()
lines=['# Result cost study', '', 'Tracking: #16. This is a synthetic comparison of the corrected implementation,',
       'not a claim about whole applications or a compiler-independent zero-cost abstraction.', '',
       '## Reproduction and provenance', '', '```sh',
       'python3 benchmarks/run.py --output /tmp/error-d-cost',
       'python3 benchmarks/summarize.py --input /tmp/error-d-cost --output /tmp/error-d-cost/report.md', '```', '',
       f"Measured code revision: `{meta['head']}`. The source, kernel and timing-driver",
       'SHA-256 hashes are recorded with the compiler versions, flags, platform,',
       f"CPU details and raw UTC timestamp in [metadata]({relative}/metadata.json).",
       f"All sample arrays, counts and checksums are in [measurements]({relative}/measurements.json).", '',
       'Machine: Intel Core i7-9750H, Linux x86_64. DMD 2.111.0 uses',
       '`-release -O -inline`; LDC 1.42.0 uses `-release -O3`. Both also use',
       '`-de -preview=dip1000 -boundscheck=on`. No LTO, native-CPU tuning or removal',
       'of normal bounds checks. Benchmark processes are pinned to one allowed logical',
       f"CPU ({meta['logical_cpu']}); no CPU governor/turbo or other system settings were changed.", '',
       '## Method', '',
       f"- Runtime-generated xorshift inputs: seed {meta['seed']}, {meta['input_count']} entries.",
       '  Batch-dependent XOR salt prevents an invariant repeated-input computation.',
       '- Separate optimized producer object with no-inline public entry points.',
       '  The pipeline uses local inlineable producers plus map/andThen; its public',
       '  entry also stays out of line. This measures an API boundary, not maximum',
       '  whole-program inlining. The caller checksum includes result handling.',
       '- Compare Result with bool plus out parameters and bool plus ref parameters.',
       '  Caller buffers are reused across iterations in both cases. out parameters',
       '  are still initialized on each call by D semantics; ref parameters need not',
       '  clear old contents. Only the active success/error branch is read.',
       '- Large success payload is 32 ulongs (256 bytes). Producers fill every word;',
       '  the timed consumer reads first/last words. Untimed verification compares',
       '  every word and both error fields across all implementations.',
       f"- {meta['samples']} samples per case, warmed up, rotating variant order; common calibrated",
       f"  operation count within each family, targeting {meta['target_ms']} ms for its slowest member.",
       '  Fast members can have shorter samples. GC disabled during runtime collection.',
       '- An atomic sink write once per complete timed loop and a no-inline loop',
       '  entry keep calls observable. Kernels have no counter/barrier instrumentation.',
       '  Work counts and checksums must agree within each comparable family.',
       '- Medians and median absolute deviations (MAD) describe this run, not a',
       '  confidence interval. No cross-machine or production-latency prediction.', '',
       '## Layout sizes (bytes)', '',
       '| Payload | T | E | Result, DMD | Result, LDC | Status carrier |',
       '| --- | ---: | ---: | ---: | ---: | ---: |']
for payload in ['ulong','block256','void','instrumented_counted']:
    rows={r['compiler']:r for r in records if r['kind']=='size' and r['payload']==payload}
    a,b=rows['dmd'],rows['ldc2']
    lines.append(f"| {payload} | {a['value_bytes']} | {a['error_bytes']} | {a['result_bytes']} | {b['result_bytes']} | {a.get('status_carrier_bytes','—')} |")
lines += ['', 'The carrier is a comparison struct containing bool, T and E simultaneously;',
          'the measured APIs use separate output parameters, which can occupy registers',
          'or reused buffers. Carrier size is not a claim about actual caller stack use.',
          'Counted contains a 256-byte array plus a counter pointer and a destructor;',
          'its Result includes the additional destruction-state flag/alignment.', '',
          '## Copy counts', '',
          'These are postblit calls for an instrumented nontrivial payload. Counters',
          'perturb optimization and the type itself, so they are kept out of timing',
          'kernels and do not count machine-level memcpy instructions.', '',
          '| Operation | DMD copies | LDC copies |', '| --- | ---: | ---: |']
ops=['factory_temporary','factory_lvalue','result_copy','value','map','match','assignment','take','status_out_assignment']
for op in ops:
    rows={r['compiler']:r['copies'] for r in records if r['kind']=='copies' and r['operation']==op}
    lines.append(f"| {op} | {rows['dmd']} | {rows['ldc2']} |")
lines += ['', 'Each operation resets the counter before running. In this specific lvalue',
          'workflow, factory + value adds two payload copies; assigning once into an',
          'out parameter and reading it in place needs one. Factory + take avoids the',
          'second copy. Temporary production + take has no postblit calls.', '',
          '## Runtime: median (MAD) nanoseconds per operation', '',
          'Threshold is the initial input-failure threshold: 0/256, 3/256 (1.17%),',
          '128/256 or 256/256. The pipeline also has a second-stage domain check,',
          'identical in both versions; its total error rate is not just this threshold.',
          'Ratios above 1 mean Result took longer than status/out in this run.', '']
for compiler in ['dmd','ldc2']:
    lines += [f'### {compiler}', '', '| Family | Initial failures | Result | Status/out | Status/ref | Result/out |',
              '| --- | ---: | ---: | ---: | ---: | ---: |']
    for family,names in [('small',['result_small','status_out_small','status_ref_small']),
                         ('256-byte',['result_large','status_out_large','status_ref_large']),
                         ('pipeline',['pipeline_result','pipeline_status'])]:
        for threshold in [0,3,128,256]:
            rows={r['kernel']:r for r in records if r['kind']=='runtime' and r['compiler']==compiler and r['threshold']==threshold}
            def cell(name):
                r=rows[name];return f"{r['median_ns_per_op']:.2f} ({r['mad_ns_per_op']:.2f})"
            ratio=rows[names[0]]['median_ns_per_op']/rows[names[1]]['median_ns_per_op']
            failure={0:'0%',3:'1.17%',128:'50%',256:'100%'}[threshold]
            ref=cell(names[2]) if len(names)>2 else '—'
            lines.append(f'| {family} | {failure} | {cell(names[0])} | {cell(names[1])} | {ref} | {ratio:.2f}× |')
    lines += ['']
lines += ['## Generated code (bytes)', '',
          'Entry = named producer function only. Reachable = deduplicated function',
          'extents statically referenced within kernels.o, including helper functions.',
          'Weak COMDAT functions are included. External callees, caller-side getters,',
          'alignment/linker overhead and other objects are excluded; this is not a',
          'final executable-size claim. The raw symbol lists and relocatable',
          'disassemblies let the call references be inspected.', '',
          '| Kernel | DMD entry | DMD reachable | LDC entry | LDC reachable |',
          '| --- | ---: | ---: | ---: | ---: |']
for kernel in ['result_small','status_out_small','status_ref_small','result_large','status_out_large','status_ref_large','pipeline_result','pipeline_status']:
    rows={r['compiler']:r for r in records if r['kind']=='code_size' and r['kernel']==kernel}
    a,b=rows['dmd'],rows['ldc2']
    lines.append(f"| {kernel} | {a['entry_bytes']} | {a['reachable_object_function_bytes']} | {b['entry_bytes']} | {b['reachable_object_function_bytes']} |")
lines += ['', f'[DMD disassembly]({relative}/dmd-kernels.asm), [DMD symbols]({relative}/dmd-symbols.txt),',
          f'[LDC disassembly]({relative}/ldc2-kernels.asm), [LDC symbols]({relative}/ldc2-symbols.txt).', '',
          '## Interpretation', '',
          '- No general zero-overhead claim is supported. DMD retains calls into',
          '  move/SumType/composition helpers and sizable stack-temporary code. LDC',
          '  folds the small producer into arithmetic, branch/tag stores and return;',
          '  caller handling and the Result return convention still have a cost.',
          '- LDC is close to status/out for successful 256-byte results here. That',
          '  does not establish equivalence at other failure rates or against a',
          '  reused ref buffer; buffer initialization semantics matter.',
          '- Nontrivial copy access is an intentional copy, not borrowing. take is',
          '  the existing mechanism for avoiding that copy when ownership transfers.',
          '- The useful next optimization target is DMD factory/composition code',
          '  generation, followed by LDC small-result boundary/handling costs. Keep',
          '  the adversarial safety regressions as a constraint on any optimization.', '',
          'Limitations: one laptop, one run per compiler, active OS/background work,',
          'SMT sibling activity and dynamic frequency/thermal behavior are not',
          'controlled. Small MAD does not measure cross-run variation. The artificial',
          'arithmetic and payload shape are not a parser/I/O workload. No allocation',
          'or real consumer migration benchmark is claimed. CI runs only correctness',
          'and harness smoke checks, never a timing-ratio pass/fail gate.', '']
args.output.parent.mkdir(parents=True,exist_ok=True)
args.output.write_text('\n'.join(lines))
print(args.output)
