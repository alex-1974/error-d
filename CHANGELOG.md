# Changelog

## 0.4.0 — 2026-11-06

- Fill existing trivial-storage alignment padding with the state word, reducing
  DMD partial-store/wide-load overhead without growing Result.
- Preserve safety, payload eligibility and ownership behavior; test each tag width.
- Correct inherited noinline attributes in pipeline benchmark callbacks and add
  an automated LLVM attribute audit. Earlier pipeline data measures opaque callbacks.
- Retain matched v0.3/current raw comparisons and report mixed/slower cases in
  [the performance report](docs/performance-v04.md).

Source API unchanged; the private tag representation is not binary compatible
with v0.3. There are no external consumers yet, only in-repository fixtures.

## 0.3.0 — 2026-11-06

Performance optimization of trivial pointer-free results; general payloads keep
the v0.2 safety/lifetime path.

- Add a recursively constrained data-only storage path excluding references,
  hooks, custom assignment, alias-this and qualified payload fields.
- Construct only the active payload, preserve compiler-generated trivial copies
  and allow small results to use register returns.
- Simplify checked getters and trivial combinators; forward unchanged outcomes
  without reconstructing them. Mark unconditional failure as noreturn.
- Extend correctness/backend selection tests and keep adversarial regressions.
- Add source-revision replay and same-process interleaved old/new benchmarks,
  preserving raw samples, controls, generated code and slower cases.

Source API remains unchanged, but POD traits/calling conventions can change.
Recompile all D consumers; do not mix v0.2 and v0.3 objects using generic Result.
The separate C status adapter remains unchanged. Inactive bytes are unspecified;
no generic raw serialization, equality or erasure contract is added.

## 0.2.0 — 2026-11-05

Safety review and reproducible cost study. Upgrade from v0.1.0.

- Fix double cleanup and lost updates when a payload destructor reenters its
  Result during replacement: detach old storage, commit, then clean up.
- Fix mismatched payload/tag and a resource leak when a postblit replaces its
  source during Result copying: select the branch before invoking copy code.
- Guard final owner destruction, including attempts to move the owner from its
  destructor; ordinary owning Result moves remain supported.
- Restrict reference-copy payload access and Result copies to @system. This
  closes an invalid-slice case previously accepted in @safe code. Unsafe callers
  remain responsible for source non-reentrancy while reference copying.
- Reject elaborate payload move hooks: the SumType union cannot forward them
  reliably. This safety-related payload/API restriction motivates a minor release.
- Add baseline/current adversarial probes, CI regressions and an updated audit.
- Add size/copy metrics, optimized DMD/LDC timing against status/out and status/ref,
  generated-code evidence, raw samples and a reproducible measurement report.

## 0.1.0 — 2026-11-05

Initial public release.

- Generic Result!(T, E) and void success with explicit success/failure factories.
- Safe empty default state, exhaustive matching and @mustuse diagnostics.
- Checked copy access, explicit take operations, conditional copy support and
  transactional assignment preserving the destination on a throwing copy.
- map, mapError and andThen with ordinary scope callbacks and conditional
  @safe/pure/nothrow/@nogc behavior.
- Private SumType storage, qualified access and constrained safe/nonthrowing
  cleanup and transfer; no public storage references.
- DMD 2.111.0 and LDC 1.42.0 Linux x86_64 CI, debug/release, DIP1000,
  compile-fail cases, fatal-access subprocesses and ownership counters.
- Separately compiled calculation/parser consumers, a noncopyable resource
  transfer, a scalar thread-message adapter and a C status-struct adapter.
- User guide, API reference, decisions, safety audit and consumer-pilot findings.

Known boundaries: no direct baseline Phobos Variant/std.concurrency storage of
Result; use an explicit transport representation. No stable generic binary ABI,
BetterC guarantee, ref access or Rust-style ownership/thread traits. Composition
copies payloads; use explicit take for noncopyable ownership. No DUB registry
registration accompanies this release. v0.x minor versions may change the API;
patch versions preserve it.
