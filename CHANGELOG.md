# Changelog

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
