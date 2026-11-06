# v0.4 state-word optimization and benchmark correction

Tracking: #18. There are no external consumers yet; library integration examples
are test fixtures. The source API is unchanged.

## Library change

The trivial storage tag now fills its existing alignment slot (1, 2, 4 or
machine-word bytes), rather than writing a byte and leaving padding. DMD can
return a fully defined state register without a partial store followed by a
wide load. The pointer-free eligibility rules, checked access and ownership
backend remain unchanged. Result size and alignment do not grow. Small, large
and void benchmark sizes remain 16, 264 and 12 bytes on this x86-64 target.
DMD `result_small` shrinks from 123 to 93 bytes of entry code.

The private tag representation changes, so different versions are not binary
interchangeable, even where sizes match. This is a pre-consumer change; there
is no deployed consumer migration to perform. Inactive bytes remain unspecified.

## Measurement correction

Earlier pipeline snapshots (through v0.3) unintentionally inherited the outer
`pragma(inline, false)` in anonymous callbacks. LDC emitted callback calls,
whereas the handwritten status implementation used fused arithmetic. Those
rows therefore describe **opaque callbacks**, not fully optimized composition.
Their raw data remains available, but they must not be compared directly to
the corrected pipeline as evidence of a library speedup.

The current callbacks place `pragma(inline, true);` inside their bodies. The
public producer remains noinline, separately compiled, without LTO. Both
v0.3 and the candidate use this identical corrected kernel in the comparison
below. An automated optimized-LLVM audit in `run.py` checks the producer and
callback attributes; the candidate pipeline contains no remaining calls.
[IR and audit](../benchmarks/results/v04-code/ldc2-inline-audit.json) retain
the evidence. DMD uses the same explicit callback directives; the attribute
audit itself is LDC-specific.

## Matched source comparison

[Raw paired data](../benchmarks/results/v04-paired/measurements.json) and
[metadata](../benchmarks/results/v04-paired/metadata.json) record three samples,
a 10 ms slowest-family calibration target and 16,384 inputs. Old/new producers
are interleaved in one process with identical work counts and checked
checksums. The source and kernel hashes match the released implementation;
the recorded HEAD predates its commit because measurements used the working
tree. The paired source hashes are authoritative.

These are short exploratory measurements on one desktop, not stable latency
guarantees. Later local reruns hit severe system memory pressure and compiler
timeouts; those attempts are excluded. The independent CI correctness suite
passed for both supported compilers. Controls also vary, so small changes
and large-payload differences should not be treated as established gains.

Times are median nanoseconds per operation. Threshold 0 means no initial
failure (the pipeline can still fail in its second stage); 256 means every
initial operation fails.

| Compiler | Case | Threshold | v0.3 | Candidate | Observed ratio |
|---|---|---:|---:|---:|---:|
| dmd | result_small | 0 | 6.46 | 2.62 | 2.47x |
| dmd | result_large | 0 | 105.59 | 105.15 | 1.00x |
| dmd | pipeline_result | 0 | 18.04 | 8.37 | 2.16x |
| dmd | pipeline_status | 0 | 3.80 | 3.62 | 1.05x |
| dmd | result_small | 256 | 9.58 | 5.20 | 1.84x |
| dmd | result_large | 256 | 17.04 | 17.04 | 1.00x |
| dmd | pipeline_result | 256 | 11.00 | 6.76 | 1.63x |
| dmd | pipeline_status | 256 | 6.07 | 6.07 | 1.00x |
| ldc2 | result_small | 0 | 3.83 | 3.51 | 1.09x |
| ldc2 | result_large | 0 | 18.76 | 19.41 | 0.97x |
| ldc2 | pipeline_result | 0 | 3.98 | 3.87 | 1.03x |
| ldc2 | pipeline_status | 0 | 2.26 | 3.04 | 0.74x |
| ldc2 | result_small | 256 | 4.11 | 3.74 | 1.10x |
| ldc2 | result_large | 256 | 3.68 | 3.55 | 1.04x |
| ldc2 | pipeline_result | 256 | 3.13 | 2.92 | 1.07x |
| ldc2 | pipeline_status | 256 | 1.41 | 1.40 | 1.00x |

DMD small-result and pipeline gains are substantial in this run and agree
with reduced generated code. Large-result and LDC changes are small or mixed;
LDC successful large results are about 3.5% slower in this run. No general
LDC speedup is claimed. The old LDC all-error pipeline regression cannot be
carried forward unchanged: it was measured with opaque callbacks. The
corrected matched baseline is 3.13 ns versus 2.92 ns, a small exploratory
difference, not the much larger old-harness/new-harness change.

Result still has measurable overhead against handwritten status code in
several cases. This change does not establish zero-cost error handling.
All four thresholds, status/out and status/ref controls, raw sample spreads,
code, size and copy metrics are retained in the data directories. The
standalone code snapshot uses only one smoke timing sample; use paired data
for the runtime comparison above.

## Replay

```sh
python3 benchmarks/compare.py --baseline v0.3.0 --samples 3 --target-ms 10 --size 16384 --output /tmp/error-v04-paired
python3 benchmarks/run.py --samples 1 --target-ms 1 --size 1024 --output /tmp/error-v04-code
```

Use the default seven samples and 50 ms target on an otherwise quiet machine
for a longer follow-up. Benchmark timings are never CI pass/fail thresholds.
Production tests cover all tag widths and state transitions; the CI also
runs negative compilation, fatal access, independent library/C fixtures and
the full baseline/current adversarial lifetime probes.
