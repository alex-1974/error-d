# Cost study

Run from the repository root:

```sh
python3 benchmarks/run.py --output /tmp/error-d-cost
python3 benchmarks/summarize.py --input /tmp/error-d-cost --output /tmp/error-d-cost/report.md
```

Requirements: the supported D compilers, Python 3, Linux taskset and binutils
(nm, readelf, objdump). Select one compiler with --compiler dmd or --compiler ldc2.
Default: seven samples and a 50 ms family calibration target; --samples,
--target-ms, --seed and --size are recorded with the raw data. The script never
changes CPU governor/turbo settings and only pins its own benchmark subprocesses.

Kernels are built separately, with no LTO and no-inline public entry points.
Verification compares full large payloads and error fields before timing.
Runtime uses reused output buffers, multiple failure thresholds and comparable
checksums/work counts. Instrumented copy counts are collected separately.
Code-size collection includes weak symbols and reachable in-object helper code;
external callees and the linked executable are outside that count.

The committed desktop-x86_64 snapshot has full samples, metadata, symbols and
disassembly. [Interpretation and limitations](../docs/performance.md) accompany it.
CI uses a short smoke invocation with no timing thresholds; performance ratios
are evidence, not correctness assertions.
