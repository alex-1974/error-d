# Post-v0.1 safety review

This is a manual implementation review plus executable adversarial regression
coverage, not an independent audit or a formal proof. Tracking: #15.

## Findings and corrections

| Finding | v0.1.0 reproduction | Correction / boundary |
| --- | --- | --- |
| R1: replacement destroys through active storage | A safe destructor callback replaces its owner: resource counter becomes -1, and outer replacement overwrites the callback's result | Detach old storage, commit prepared storage, then destroy the retired branch. The callback sees a valid committed owner; its replacement survives. |
| R2: source tag read after a postblit | A safe copy hook replaces the source: copied payload is success but its tag becomes failure, leaking its resource | Select the branch before copying; construct a fresh SumType from that selected wrapper, instead of using SumType's whole-variant copy constructor. |
| R3: a reference-copy hook can invalidate its borrowed source | A safe reference-copy constructor replaces the owner and then reads its source: value() returns a slice of length 9 with a null pointer | Copy access and whole-Result copies involving reference copy constructors are explicitly @system. Their source lifetime requires caller-controlled non-reentrancy. This is a restriction, not a claim that unsafe callers are automatically protected. |
| R4: relocation hooks lost inside union storage | A valid self-relative payload with a scope-qualified opPostMove is accepted but its destructor observes an invalid self pointer | Reject payloads with elaborate move hooks, including nested/static-array hooks. SumType's union prevents reliable propagation; the library must not promise this support. |

R1 is also relevant during final destruction. Destructible Results now mark the
owner as being destroyed before payload cleanup. Payload access/copy/mutation
of that owner fails fast, and state queries report empty. A Result-level
scope-qualified opPostMove prevents stealing the owner from inside its own
destructor, including via core.lifetime.move and implicit moves. Ordinary owning
Result moves remain @safe on the baselines and are tested with exactly-once
release. The new flag is present only when storage has a destructor.

For R3, mutable, const and immutable Result copy constructors share the same
policy; qualified copy access and combinators inherit the selected operation's
safety. A postblit acts on an already copied destination and is different from a
reference-copy constructor borrowing the source. Noncopyable values still use
explicit take and do not need a source-borrowing copy. Ordinary payload
constructors, copies, callbacks and cleanup are not made trusted. A throwing
preparation does not make the library replace its destination, but user copy-hook
side effects are not rolled back; this includes intentional reentrant mutations.

## Reproduce and verify

```sh
python3 probes/review/run.py --baseline v0.1.0
python3 probes/review/run.py
python3 tests/run.py
```

The baseline is extracted using git show into a temporary directory; the working
checkout is not changed. Baseline reproduction requires that local tag. Both
DMD 2.111.0 and LDC 1.42.0, debug and optimized release with DIP1000, run the same
fixtures. The reference-copy probe observes an invalid slice without dereferencing
it; the test does not deliberately execute a use-after-free. Reentrant final
destruction must terminate with SIGABRT, not proceed or raise another exception.
Current CI runs the regression probes; it does not require a shallow checkout
to contain the old release tag.

Raw outputs are in [baseline results](../probes/review/results/v0.1.0.jsonl) and
[corrected results](../probes/review/results/fixed.jsonl). Fixtures cover
replacement, postblit source mutation, reference-copy invalidation, final
cleanup reentry, moving during cleanup, and self-relative payload cleanup.
Negative compile tests also verify @system copy access and that member cleanup
still prevents @nogc use when it allocates. These tests complement the preexisting
throwing-copy, qualification, explicit transfer and branch-transition suites.

## Re-audit of trusted operations

- badAccess calls nonreturning C abort through a C pointer with a pure annotation;
  it exposes no user memory. Every checked-access failure remains unconditional
  in release. The test driver disables core dumps.
- replace only moves private prepared/detached storage. No reference into active
  storage is public, ordinary postblits copy into independent objects, and
  source-reference copying is excluded from @safe operations. The retired branch
  is no longer active when its user cleanup runs. Cleanup/transfer remain
  constrained @safe nothrow; hooks whose relocation cannot be forwarded are
  rejected. The assignment is committed before old cleanup begins.
- takeStorage transfers the active private storage and explicitly restores Empty
  for POD as well as destructible payloads. Reads and destructive operations
  first reject an owner being destroyed. No public ref escapes.

Remaining boundaries: @system callers must maintain source lifetimes during
reference copies. Malformed @trusted payload code, races through unsupported
shared access, invalid foreign buffers and types violating their own destruction
contracts are outside the @safe library guarantee. No independent review has
been performed. New compilers/backends need the same regressions; changing a
trait or copying strategy must not silently restore the rejected cases.

This review supersedes the initial safety note's assumption that merely hiding
storage references was sufficient, and its assumption of non-reentrant cleanup.
The safety restrictions and rejected payload category require a documented minor
release rather than claiming complete source compatibility with v0.1.0.

Primary references checked against the installed runtime sources:
[D struct copying](https://dlang.org/spec/struct.html),
[core.lifetime](https://dlang.org/phobos/core_lifetime.html),
[SumType](https://dlang.org/library/std/sumtype.html).
