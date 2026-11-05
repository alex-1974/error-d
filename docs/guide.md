# Using error-d

## Build and verify

The initial tested platform is Linux x86_64 with DMD 2.111.0 or LDC 1.42.0
(frontend 2.112.1), matching Phobos/druntime and Python 3. The C adapter test also
needs a C compiler (`cc`). No third-party D packages are required.

```sh
dub build --compiler=dmd
dub build --compiler=ldc2
python3 tests/run.py
```

`tests/run.py --compiler dmd` selects one compiler. Tests include DIP1000,
debug/release, compile rejection, expected aborts, ownership counters, threads,
two independently built D library archives and a C adapter consumer. Runtime
checks deliberately remain active in release. `dub test` alone is not this suite.

Use the DUB package `error-d` and import module `error_d`. Until registry
registration, use a Git checkout/path dependency; do not assume a registry entry.
The license is BSL-1.0, selected as a permissive library license familiar in D.

## Construct and handle

```d
import error_d;
enum ParseError { invalidDigit }
alias R = Result!(int, ParseError);
auto value = R.success(42);
auto failure = R.failure(ParseError.invalidDigit);
auto saved = Result!(void, ParseError).success();
```

`R.init` and `R result;` are safely empty: no success or error payload is active.
Empty is a programming/storage state, not a domain outcome. A completed producer
must return success or failure. `!hasError` does **not** imply success; check
`hasValue`, handle `hasError`, and diagnose `isEmpty`, or match all three:

```d
int n = value.match(
    (int x) => x,
    (ParseError e) => -1,
    () => -2);
```

`match` takes ordinary scope callback arguments (including closures). It calls
exactly one callback, passing a **copy** of the active payload; void success and
empty take no arguments. Handler return types must be identical, including their
qualifiers, or all void. Ref returns are rejected. `value()` and `error()` also
copy; they do not consume. Wrong-branch access calls abort in debug and release.
There is no fallback value, unchecked accessor or recoverable exception there.
`@mustuse` rejects an implicitly discarded Result expression. `cast(void)` is
explicit discard; assigning an unread local does not prove errors were handled.

## Own and transfer resources

```d
import core.lifetime : move;
// A resource-owning, movable type with @safe nothrow destruction:
// auto result = Result!(FileOwner, FileError).success(move(owner));
// auto owned = result.takeValue(); // result is now empty
```

A Result owns its payload object. It does not impose ownership of memory reached
through slices, pointers or class references. Copies preserve those aliases and
never silently deep-copy a buffer. Const access retains transitive const.
Borrowed memory must outlive its use; Result does not extend its lifetime.
Producers retaining a parameter need the appropriate return/scope relationship;
payload destructors handling such data may also need scope annotations (see the
separately built Resource fixture in examples/libraries/calculation.d).

Noncopyable payloads make the whole Result noncopyable. Factories can consume a
noncopyable temporary or an explicit `move(lvalue)`; extraction uses `takeValue`
or `takeError`. Copy-based match/composition requires the copies used by those
operations; it is not a consuming pipeline for noncopyable resources. No public
ref access is exposed. Qualified payloads are accepted only when the required
operations compile without dropping qualifiers.

Destruction and transfer must be @safe and nothrow; unsafe/throwing destructors
or move hooks are rejected. Copy constructors and callbacks may throw, allocate
or be @system, in which case the corresponding operation loses those guarantees.
Reference-copy constructors can retain a reference to the source while arbitrary
user code runs. Therefore value/error copy access and whole-Result copying for
such payloads are @system, even when the payload's own copy constructor says
@safe. Callers choosing @system must prevent source invalidation during copying.
Postblits operate on the already-independent destination instead. Noncopyable
payloads still use take and do not require reference-copy access.
An operation unavailable for a payload is rejected at compile time. Payloads with elaborate move hooks (`opPostMove`, including nested hooks) are
rejected: the union backend cannot forward them reliably. Ordinary Result
owners can still be moved safely; the Result-level scope-qualified hook protects
the owner's destruction state. Types must obey their own ordinary D relocation
rules; Result is not a new ownership/borrow checker.

Assignment prepares the incoming value before replacing the old one. If
preparation throws, the library has not replaced the destination. Side effects
performed by a user copy hook (including deliberate reentrant mutations) are
not rolled back. Self-copy follows the same rule. A replacement is committed before the old
payload is destroyed, so reentrant cleanup sees the new state and cannot cause
an outer overwrite. During final owner destruction, access/mutation and attempts
to move that owner abort; queries report empty. Payload opAssign is not invoked. Explicit take leaves Result empty, even for POD values.
D's `move(result)` follows core.lifetime rules; do not rely on it resetting a
trivial source. See [ADR 0002](decisions/0002-ownership.md).

## Compose and preserve error domains

```d
auto doubled = value.map((int x) => x * 2);
auto next = value.andThen((int x) => R.success(x + 1));
auto renamed = failure.mapError((ParseError e) => cast(int)e);
```

`map` calls only on success (and can return void); `mapError` calls only on
failure and returns a non-void error; `andThen` returns the callback's Result
and requires exactly the same copied error type. Failure/empty short-circuit
success callbacks. Empty propagates as empty. Exceptions in callbacks propagate
normally and do not consume the source. Attributes are inferred from copies and
callbacks, not fixed independently of them. `@nogc` forbids GC allocations; it
does not prohibit every allocator. `nothrow` does not exclude D's Error hierarchy.

The runnable [consumer](../examples/consumer.d) composes a decimal parser and a
checked calculation, each with its own error type, into a named `ImportError`
SumType. `mapError` wraps source errors losslessly. SumType itself uses alias
`match!(handlers)()` syntax; Result uses ordinary `match(handlers)` arguments.
Public errors should describe their library's contract. Inferred internal
variants should not accidentally become your public API. Adding a closed error
alternative can break exhaustive consumers. See [ADR 0003](decisions/0003-library-boundaries.md).

## Threads and binary boundaries

Independent Result objects do not require locks in error-d. Aliases in their
payloads may still require synchronization. `const` is a read-only view, not a
promise that all other aliases are immutable. Sharing an object for mutation
requires synchronization of both tag and payload; shared is not atomic Result.

Direct storage of Result in baseline Phobos Variant/std.concurrency is **not
supported**: generic emplacement discards @mustuse constructor values, and
Variant has additional copy/equality assumptions. The tested thread example in
[tests/threads.d](../tests/threads.d) encodes scalar data into an explicit message,
then reconstructs Result on the receiver. The Phobos transport entry points
are @system; the encoding/decoding functions are @safe. This is value messaging,
not a promise that arbitrary owning or borrowed payloads are transferable.
Mutable alias payloads are rejected by the standard transport; custom transports
need their own validated transfer and synchronization contract. There are no
Send/Sync traits or internal locks in error-d.

Same-build D libraries resolve the same Result template dependency. Separately
distributed plugins/C libraries do not get a stable generic Result ABI. The
[C adapter](../examples/c/decimal.h) demonstrates a versioned value-only status
struct, borrowed input valid for the duration of the call, no cross-boundary
allocations, and no escaping D exceptions. C callers must supply a valid pointer
and length. It is tested by linking a real C consumer with each D compiler on
the tested platform; this does not establish compatibility for other ABIs.
For allocating interfaces the creator must supply release functions; never free
another runtime's allocation using a guessed allocator.

## Migration and boundaries of the model

Keep existing public bool/status/exception signatures while adapting internally
if source compatibility is required. Replacing a public return type with Result
is an API change. A new v0.x minor may change the API; patches preserve it.

Return expected recoverable errors as structured E values. Keep EOF, needInput,
needOutput and partial progress in explicit domain state types when appropriate;
Result is not a replacement for a decoder state machine. A streaming step may
itself be the success payload if that models its contract clearly.

A returned failure is a normal return: it runs scope(exit) and scope(success),
not scope(failure). Rewrite exception-dependent rollback around an explicit
commit flag when changing to Result. Logging, message formatting, retry and
redaction belong to the application boundary; Result performs none of them.

BetterC, stable generic ABI, arbitrary generic-container compatibility and Rust
ownership/thread guarantees are not v0.1 promises. See the decision records for
rationale and the actual verification scope.

See the [post-v0.1 safety review](security-review.md) for baseline reproductions
and changed guarantees, and [cost measurements](performance.md) for the measured
compiler-dependent overhead. v0.1.0 should be replaced by the corrected release.
