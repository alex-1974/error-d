# v0.3 performance optimization

Tracking: #17. Baseline is v0.2.0; the candidate adds the narrowly selected
pointer-free storage path documented in [ADR 0005](decisions/0005-trivial-storage.md).

## What changed

- Pointer-free, hook-free, assignable payloads without alias-this use a private
  data-only union and tag. Resources, pointers, slices, custom assignment/copy
  hooks and qualified payload fields keep the v0.2 SumType path.
- Direct active-member construction avoids destructive move chains and
  initialization/copies of a large inactive union. Trivial Result instances
  use compiler-generated copies and can return in registers.
- Checked trivial getters and inline/single-expression combinators reduce
  dispatch overhead. Unchanged trivial outcomes can be forwarded directly.
  Contract failure remains unconditional and is now explicitly noreturn.

Source API is unchanged; binary calling conventions can change. Recompile
every D consumer against one library version. No generic ABI compatibility
with v0.2 is claimed. Inactive bytes are unspecified; raw serialization,
bytewise equality and zeroization are not part of the Result contract.

## Comparison method

```sh
python3 benchmarks/run.py --source-revision v0.2.0 --output /tmp/error-before
python3 benchmarks/run.py --output /tmp/error-after
python3 benchmarks/compare.py --output /tmp/error-paired
python3 benchmarks/summarize_comparison.py --before /tmp/error-before --after /tmp/error-after --paired /tmp/error-paired --output /tmp/error-comparison.md
```

The baseline source is `c8b2fded522d71a24701c6e9369733d880779ed4`; the candidate source was
recorded at `5acce5354f515d2ce67f81b681b599281b486630`. [Metadata](../benchmarks/results/optimization-paired/metadata.json)
contains both source hashes, the original and generated timing-driver hashes,
compiler versions/flags, CPU information and the raw UTC timestamp.

The main runtime results are **interleaved in one process**, not ratios of
separate sessions. The baseline module and C symbols are renamed solely to
link old/new producers together; both get the same benchmark source, compiler
flags, input data, batch salt and operation counts. Old/new variants are
adjacent in rotating sampling order. The generated [paired driver](../benchmarks/results/optimization-paired/paired-runtime.d)
is retained for inspection. A compiler-visible atomic sink keeps complete
timed calls observable; no counters are inserted into the kernels.

There are 7 samples per case, a 50 ms slowest-family calibration
target and 65536 xorshift inputs (seed 123456789). Checksums/work counts
must agree across both implementations and all status controls in a family.
Separate verification compares every large-payload word and both error fields.
DMD 2.111.0 uses -release -O -inline; LDC 1.42.0 uses -release -O3.
Both retain -de, DIP1000 and bounds checks. No LTO; no-inline public producer
entry points preserve the API boundary. Runs use one logical CPU on the
same i7-9750H laptop, without changing governor/turbo settings.

Independent before/after runs provide code/layout/copy evidence below;
their timings are retained but are not used for the primary speedup tables.

## Interleaved runtime: median (MAD), ns/op

Speedup = old Result time / new Result time. Below 1 means a slower row.
Initial failures are the input threshold; the pipeline has an additional
second-stage error check in both versions. MAD is not a confidence interval.

### dmd

| Family | Initial failures | v0.2 Result | New Result | Speedup | Status/out old → new | New Result/out |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| small | 0% | 25.28 (0.83) | 6.37 (0.04) | 3.97× | 2.40 → 2.42 | 2.63× |
| small | 1.17% | 25.86 (0.77) | 6.51 (0.06) | 3.97× | 2.57 → 2.54 | 2.56× |
| small | 50% | 28.81 (2.18) | 8.22 (0.05) | 3.51× | 5.87 → 5.59 | 1.47× |
| small | 100% | 27.70 (1.21) | 10.11 (0.19) | 2.74× | 6.60 → 6.61 | 1.53× |
| 256-byte | 0% | 208.91 (2.79) | 99.57 (1.10) | 2.10× | 60.01 → 59.65 | 1.67× |
| 256-byte | 1.17% | 216.88 (8.81) | 103.44 (5.08) | 2.10× | 61.13 → 60.16 | 1.72× |
| 256-byte | 50% | 157.10 (1.66) | 64.25 (0.87) | 2.45× | 40.65 → 41.95 | 1.53× |
| 256-byte | 100% | 75.20 (0.72) | 18.97 (0.41) | 3.96× | 15.28 → 15.37 | 1.23× |
| pipeline | 0% | 76.35 (1.17) | 19.18 (0.18) | 3.98× | 3.48 → 4.03 | 4.76× |
| pipeline | 1.17% | 78.20 (1.41) | 19.39 (0.27) | 4.03× | 3.61 → 4.40 | 4.41× |
| pipeline | 50% | 80.82 (4.55) | 16.14 (0.80) | 5.01× | 6.39 → 7.07 | 2.28× |
| pipeline | 100% | 73.59 (0.90) | 11.81 (0.21) | 6.23× | 6.49 → 6.32 | 1.87× |

### ldc2

| Family | Initial failures | v0.2 Result | New Result | Speedup | Status/out old → new | New Result/out |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| small | 0% | 4.96 (0.07) | 3.19 (0.03) | 1.55× | 1.74 → 1.72 | 1.86× |
| small | 1.17% | 5.11 (0.16) | 3.37 (0.12) | 1.52× | 1.76 → 1.82 | 1.85× |
| small | 50% | 8.95 (0.11) | 7.01 (0.06) | 1.28× | 4.95 → 4.46 | 1.57× |
| small | 100% | 5.26 (0.10) | 3.09 (0.04) | 1.70× | 1.98 → 1.60 | 1.93× |
| 256-byte | 0% | 20.61 (0.69) | 19.78 (0.42) | 1.04× | 20.49 → 20.26 | 0.98× |
| 256-byte | 1.17% | 19.81 (0.08) | 19.13 (0.28) | 1.04× | 19.96 → 19.76 | 0.97× |
| 256-byte | 50% | 16.56 (0.08) | 15.49 (0.56) | 1.07× | 14.09 → 13.95 | 1.11× |
| 256-byte | 100% | 7.41 (0.15) | 3.88 (0.18) | 1.91× | 5.92 → 5.86 | 0.66× |
| pipeline | 0% | 10.35 (0.13) | 5.89 (0.07) | 1.76× | 3.06 → 2.51 | 2.35× |
| pipeline | 1.17% | 10.37 (0.09) | 6.11 (0.11) | 1.70× | 3.15 → 2.57 | 2.37× |
| pipeline | 50% | 11.19 (0.48) | 8.42 (0.27) | 1.33× | 5.17 → 5.34 | 1.58× |
| pipeline | 100% | 5.05 (0.09) | 5.70 (0.10) | 0.88× | 1.46 → 1.98 | 2.88× |

### Regressions and interpretation

- ldc2, pipeline, 100% initial failures: 5.05 → 5.70 ns/op (13.0% slower in this run).

DMD improves substantially on the tested trivial workloads; LDC gains are
smaller, and successful large values were already close to the status/out
baseline. The remaining Result/out column is the residual cost, not a
claim that Result is now universally free. Small control timings can vary
with code layout and scheduling even in one process; every control row and
sample is retained. The all-error LDC pipeline case must not be hidden by
quoting only successful cases. Error paths and other payload shapes may
benefit differently.

## Layout and copy counts

| Compiler | Payload | Result before | Result after |
| --- | --- | ---: | ---: |
| dmd | ulong | 16 | 16 |
| dmd | block256 | 264 | 264 |
| dmd | void | 12 | 12 |
| dmd | instrumented_counted | 280 | 280 |
| ldc2 | ulong | 16 | 16 |
| ldc2 | block256 | 264 | 264 |
| ldc2 | void | 12 | 12 |
| ldc2 | instrumented_counted | 280 | 280 |

The instrumented Counted payload has a pointer, postblit and destructor,
so it deliberately remains on the general path. Per-operation postblit counts
are unchanged: temporary factory/take 0; lvalue factory, value, map, match,
whole-result copy, assignment and status/out assignment each 1. This does
not count machine-level copies of trivial types. All original ownership
and adversarial regressions remain required.

## Generated code: entry / reachable in-object function bytes

| Compiler | Kernel | Before | After |
| --- | --- | ---: | ---: |
| dmd | result_small | 318 / 543 | 123 / 123 |
| dmd | result_large | 1344 / 1702 | 197 / 269 |
| dmd | pipeline_result | 86 / 1721 | 330 / 330 |
| ldc2 | result_small | 67 / 67 | 49 / 49 |
| ldc2 | result_large | 225 / 921 | 86 / 782 |
| ldc2 | pipeline_result | 122 / 220 | 69 / 115 |

The small POD result now uses a register return; DMD no longer calls the
move/SumType construction chain for that producer. Entry bytes alone can
grow when helper calls are inlined; reachable bytes include deduplicated
functions in the kernel object. External callees, caller-side code and
final linker/alignment effects are excluded. See the full disassembly and
symbols in the source snapshots; no executable-size claim is inferred.

## Evidence and limits

- [Paired samples](../benchmarks/results/optimization-paired/measurements.json) and [metadata](../benchmarks/results/optimization-paired/metadata.json).
- [Before snapshot](../benchmarks/results/optimization-before) and [after snapshot](../benchmarks/results/optimization-after): compiler flags, sizes, copies, symbols and disassembly.
- [Fast-path design and safety boundary](decisions/0005-trivial-storage.md).

Limitations: synthetic arithmetic/static arrays, one machine, one primary
interleaved run per compiler, background work/SMT/frequency/thermal effects
not controlled. Symbol renaming/link layout can affect tiny timings. No
production parser/I/O speedup or independent safety audit is claimed.
Pointer-bearing/resources/custom-hook types retain the general backend;
their runtime performance was not established by these trivial kernels.
CI checks both backend behaviors and benchmark correctness/smoke operation,
not a speedup threshold. All D objects must be rebuilt; generic Result binary
compatibility with v0.2 is not part of this release.

