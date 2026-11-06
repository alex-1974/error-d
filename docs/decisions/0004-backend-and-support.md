# ADR 0004: Storage and supported compilers

Status: accepted for v0.1. Tracking: #4.

Use private `SumType!(Empty, Success!T, Failure!E)` storage (Success is an empty
marker for void). Empty must be first. Branch wrappers disambiguate T == E.

## Comparison and evidence

`probes/ownership/backend.d` runs on DMD 2.111.0 and LDC 1.42.0 with DIP1000.
It checks default Empty, same-type branches, noncopyable resources and extraction,
throwing-copy source preservation, and a scalar CTFE calculation. Qualifier and
reference escape behavior is verified against Result in #9, not inferred from
these probes alone. Void uses its own success marker rather than storing void.

A raw union probe shows that a union containing a noncopyable struct can still
be copied as raw storage. A custom union therefore needs its own active-member
lifetime, copy suppression, exception handling and qualifier audit. Do not take
on that unsafe implementation before a demonstrated need.

SumType supplies tested construction/copy/destruction and compile-time matching.
Its direct assignment can be @system because references can escape, and does not
supply our transactional replacement contract. Result exposes neither references
nor raw storage; use a narrowly audited transfer of prepared private storage for
replacement instead of delegating public assignment to SumType.opAssign.
Never wrap user copy hooks or callbacks in an unconditional @trusted block.

## Support policy

Initial supported/tested baseline: DMD 2.111.0 and LDC 1.42.0 (frontend 2.112.1),
Linux x86_64 with their matching Phobos/druntime. CI pins these baselines. Newer
versions and other platforms are not guaranteed until added to CI. Require
core.attribute.mustuse; do not silently drop ignored-result checking on older
compilers. DIP1000 is part of the safety verification configuration.

BetterC is deferred for v0.1: SumType's capabilities alone do not establish that
all Result operations, payloads and diagnostics meet a BetterC contract. No
stable binary layout, zero-overhead/size guarantee or no-allocation claim beyond
the compiler-checked @nogc operations. CTFE of the probe is encouraging, not yet
a blanket Result CTFE promise. Conditional attributes follow actual operations.

References: [SumType](https://dlang.org/library/std/sumtype.html),
[core.lifetime](https://dlang.org/phobos/core_lifetime.html).

Post-v0.1 amendment: [adversarial review](../security-review.md) demonstrates
that whole-SumType copying and union-contained relocation need additional
restrictions. See the corrected branch-selecting copy path, source-copy safety
policy, lifetime guard and rejected payload move hooks.

v0.3 amendment: [ADR 0005](0005-trivial-storage.md) introduces a narrowly selected
pointer-free trivial storage specialization. General payloads retain this backend.
