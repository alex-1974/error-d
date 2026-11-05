# Result cost study

Tracking: #16. This is a synthetic comparison of the corrected implementation,
not a claim about whole applications or a compiler-independent zero-cost abstraction.

## Reproduction and provenance

```sh
python3 benchmarks/run.py --output /tmp/error-d-cost
python3 benchmarks/summarize.py --input /tmp/error-d-cost --output /tmp/error-d-cost/report.md
```

Measured code revision: `015e5b7e1aad7662d76cda7c6da02fe2ca094387`. The source, kernel and timing-driver
SHA-256 hashes are recorded with the compiler versions, flags, platform,
CPU details and raw UTC timestamp in [metadata](../benchmarks/results/desktop-x86_64/metadata.json).
All sample arrays, counts and checksums are in [measurements](../benchmarks/results/desktop-x86_64/measurements.json).

Machine: Intel Core i7-9750H, Linux x86_64. DMD 2.111.0 uses
`-release -O -inline`; LDC 1.42.0 uses `-release -O3`. Both also use
`-de -preview=dip1000 -boundscheck=on`. No LTO, native-CPU tuning or removal
of normal bounds checks. Benchmark processes are pinned to one allowed logical
CPU (0); no CPU governor/turbo or other system settings were changed.

## Method

- Runtime-generated xorshift inputs: seed 123456789, 65536 entries.
  Batch-dependent XOR salt prevents an invariant repeated-input computation.
- Separate optimized producer object with no-inline public entry points.
  The pipeline uses local inlineable producers plus map/andThen; its public
  entry also stays out of line. This measures an API boundary, not maximum
  whole-program inlining. The caller checksum includes result handling.
- Compare Result with bool plus out parameters and bool plus ref parameters.
  Caller buffers are reused across iterations in both cases. out parameters
  are still initialized on each call by D semantics; ref parameters need not
  clear old contents. Only the active success/error branch is read.
- Large success payload is 32 ulongs (256 bytes). Producers fill every word;
  the timed consumer reads first/last words. Untimed verification compares
  every word and both error fields across all implementations.
- 7 samples per case, warmed up, rotating variant order; common calibrated
  operation count within each family, targeting 50 ms for its slowest member.
  Fast members can have shorter samples. GC disabled during runtime collection.
- An atomic sink write once per complete timed loop and a no-inline loop
  entry keep calls observable. Kernels have no counter/barrier instrumentation.
  Work counts and checksums must agree within each comparable family.
- Medians and median absolute deviations (MAD) describe this run, not a
  confidence interval. No cross-machine or production-latency prediction.

## Layout sizes (bytes)

| Payload | T | E | Result, DMD | Result, LDC | Status carrier |
| --- | ---: | ---: | ---: | ---: | ---: |
| ulong | 8 | 8 | 16 | 16 | 24 |
| block256 | 256 | 8 | 264 | 264 | 272 |
| void | 0 | 8 | 12 | 12 | — |
| instrumented_counted | 264 | 8 | 280 | 280 | 280 |

The carrier is a comparison struct containing bool, T and E simultaneously;
the measured APIs use separate output parameters, which can occupy registers
or reused buffers. Carrier size is not a claim about actual caller stack use.
Counted contains a 256-byte array plus a counter pointer and a destructor;
its Result includes the additional destruction-state flag/alignment.

## Copy counts

These are postblit calls for an instrumented nontrivial payload. Counters
perturb optimization and the type itself, so they are kept out of timing
kernels and do not count machine-level memcpy instructions.

| Operation | DMD copies | LDC copies |
| --- | ---: | ---: |
| factory_temporary | 0 | 0 |
| factory_lvalue | 1 | 1 |
| result_copy | 1 | 1 |
| value | 1 | 1 |
| map | 1 | 1 |
| match | 1 | 1 |
| assignment | 1 | 1 |
| take | 0 | 0 |
| status_out_assignment | 1 | 1 |

Each operation resets the counter before running. In this specific lvalue
workflow, factory + value adds two payload copies; assigning once into an
out parameter and reading it in place needs one. Factory + take avoids the
second copy. Temporary production + take has no postblit calls.

## Runtime: median (MAD) nanoseconds per operation

Threshold is the initial input-failure threshold: 0/256, 3/256 (1.17%),
128/256 or 256/256. The pipeline also has a second-stage domain check,
identical in both versions; its total error rate is not just this threshold.
Ratios above 1 mean Result took longer than status/out in this run.

### dmd

| Family | Initial failures | Result | Status/out | Status/ref | Result/out |
| --- | ---: | ---: | ---: | ---: | ---: |
| small | 0% | 23.64 (0.19) | 2.29 (0.05) | 2.55 (0.08) | 10.30× |
| small | 1.17% | 23.46 (0.16) | 2.40 (0.05) | 2.63 (0.03) | 9.76× |
| small | 50% | 25.92 (0.46) | 5.47 (0.09) | 6.09 (0.10) | 4.74× |
| small | 100% | 24.74 (0.08) | 6.18 (0.05) | 5.69 (0.02) | 4.00× |
| 256-byte | 0% | 208.57 (4.33) | 63.91 (1.04) | 55.48 (0.80) | 3.26× |
| 256-byte | 1.17% | 210.65 (3.09) | 64.67 (1.52) | 56.04 (1.56) | 3.26× |
| 256-byte | 50% | 147.17 (1.56) | 42.59 (0.48) | 34.06 (0.58) | 3.46× |
| 256-byte | 100% | 71.30 (0.98) | 14.86 (0.01) | 6.43 (0.06) | 4.80× |
| pipeline | 0% | 71.15 (0.16) | 4.06 (0.09) | — | 17.54× |
| pipeline | 1.17% | 72.65 (0.38) | 4.09 (0.07) | — | 17.78× |
| pipeline | 50% | 73.98 (0.65) | 6.59 (0.11) | — | 11.22× |
| pipeline | 100% | 69.55 (0.96) | 6.20 (0.09) | — | 11.23× |

### ldc2

| Family | Initial failures | Result | Status/out | Status/ref | Result/out |
| --- | ---: | ---: | ---: | ---: | ---: |
| small | 0% | 4.99 (0.16) | 1.69 (0.04) | 1.47 (0.01) | 2.96× |
| small | 1.17% | 4.79 (0.07) | 1.74 (0.04) | 1.52 (0.02) | 2.76× |
| small | 50% | 9.07 (0.18) | 4.95 (0.11) | 4.82 (0.02) | 1.83× |
| small | 100% | 5.47 (0.06) | 1.95 (0.03) | 1.89 (0.02) | 2.81× |
| 256-byte | 0% | 20.34 (0.34) | 19.75 (0.27) | 18.75 (0.38) | 1.03× |
| 256-byte | 1.17% | 19.78 (0.25) | 19.43 (0.13) | 18.22 (0.13) | 1.02× |
| 256-byte | 50% | 16.97 (0.72) | 13.82 (0.28) | 12.58 (0.20) | 1.23× |
| 256-byte | 100% | 7.15 (0.08) | 5.78 (0.12) | 2.36 (0.07) | 1.24× |
| pipeline | 0% | 10.25 (0.27) | 3.04 (0.09) | — | 3.38× |
| pipeline | 1.17% | 9.93 (0.21) | 3.02 (0.06) | — | 3.29× |
| pipeline | 50% | 10.50 (0.30) | 5.03 (0.10) | — | 2.09× |
| pipeline | 100% | 5.10 (0.09) | 1.47 (0.02) | — | 3.46× |

## Generated code (bytes)

Entry = named producer function only. Reachable = deduplicated function
extents statically referenced within kernels.o, including helper functions.
Weak COMDAT functions are included. External callees, caller-side getters,
alignment/linker overhead and other objects are excluded; this is not a
final executable-size claim. The raw symbol lists and relocatable
disassemblies let the call references be inspected.

| Kernel | DMD entry | DMD reachable | LDC entry | LDC reachable |
| --- | ---: | ---: | ---: | ---: |
| result_small | 318 | 543 | 67 | 67 |
| status_out_small | 116 | 116 | 68 | 68 |
| status_ref_small | 102 | 102 | 54 | 54 |
| result_large | 1344 | 1702 | 225 | 921 |
| status_out_large | 137 | 209 | 184 | 880 |
| status_ref_large | 133 | 205 | 87 | 783 |
| pipeline_result | 86 | 1721 | 122 | 220 |
| pipeline_status | 164 | 164 | 97 | 97 |

[DMD disassembly](../benchmarks/results/desktop-x86_64/dmd-kernels.asm), [DMD symbols](../benchmarks/results/desktop-x86_64/dmd-symbols.txt),
[LDC disassembly](../benchmarks/results/desktop-x86_64/ldc2-kernels.asm), [LDC symbols](../benchmarks/results/desktop-x86_64/ldc2-symbols.txt).

## Interpretation

- No general zero-overhead claim is supported. DMD retains calls into
  move/SumType/composition helpers and sizable stack-temporary code. LDC
  folds the small producer into arithmetic, branch/tag stores and return;
  caller handling and the Result return convention still have a cost.
- LDC is close to status/out for successful 256-byte results here. That
  does not establish equivalence at other failure rates or against a
  reused ref buffer; buffer initialization semantics matter.
- Nontrivial copy access is an intentional copy, not borrowing. take is
  the existing mechanism for avoiding that copy when ownership transfers.
- The useful next optimization target is DMD factory/composition code
  generation, followed by LDC small-result boundary/handling costs. Keep
  the adversarial safety regressions as a constraint on any optimization.

Limitations: one laptop, one run per compiler, active OS/background work,
SMT sibling activity and dynamic frequency/thermal behavior are not
controlled. Small MAD does not measure cross-run variation. The artificial
arithmetic and payload shape are not a parser/I/O workload. No allocation
or real consumer migration benchmark is claimed. CI runs only correctness
and harness smoke checks, never a timing-ratio pass/fail gate.
