# v0.1 safety audit

The library contains no custom raw union implementation. SumType is the storage
backend; all storage and branch wrappers are private. Positive @safe compilation
is evidence for the exercised operations, not a formal proof of all user types.

## Trusted operations

- `badAccess`: calls the C abort function through an equivalent C function pointer
  with a pure annotation. It never returns, accesses user memory or exposes a
  pointer; this permits use from pure checked accessors without a removable
  assert. Both compiler release configurations exercise its SIGABRT behavior.
- `replace`: transfers already-prepared private storage into the destination.
  Preparation and any throwing/unsafe copy hook happen outside the trusted body.
  No references into storage can escape public APIs. Stored payload destruction
  and transfer are constrained @safe nothrow so this block does not hide an
  unsafe user destructor/move hook. No arbitrary payload opAssign is called.
- `takeStorage`: transfers private storage into a fresh local and explicitly
  restores the source to Empty even for trivial payloads. It has the same alias
  and destruction prerequisites as replace. Returned storage remains private to
  the implementation, and extraction returns a value, never an internal ref.

The post-transfer `.init` state of a payload must be destructible under D's move
rules. A self-referential type must implement appropriate safe relocation behavior;
no result wrapper can repair a broken payload ownership/copy/move implementation.
Destructors must obey normal non-reentrant ownership rules: do not recursively
mutate an owner while it is being destroyed or replaced.

## Verification

The full driver builds both compiler baselines with DIP1000, -de and debug or
optimized release flags. Compile-fail cases exercise mustuse, const aliases,
stack escape, unsafe/allocating/throwing callbacks, missing/ref handlers,
noncopyable payloads, unsafe/throwing cleanup and move hooks, mismatched domains,
shared mutation and mutable-alias message transfer. Positive attribute tests
exercise @safe pure nothrow @nogc scalar composition and qualified access.

Resource counters cover all empty/success/failure transitions, noncopyable take,
copy/move, throwing preparation and self-copy. A callback may replace the source
while using its independent copy. This is why reference callbacks are excluded.
Fatal-access tests execute in child processes with core dumps disabled and demand
SIGABRT; another exception or a zero exit is a failure.

No locks, global mutable state, implicit deep copies, or heap allocation are
introduced by the core. Conditional @nogc proof is per actual instantiated
operation. Foreign constructors/copy hooks and callbacks retain inferred
attributes; thread and C transports have separately documented trust boundaries.
