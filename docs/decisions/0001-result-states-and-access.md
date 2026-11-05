# ADR 0001: Result states, initialization and access

Status: accepted for implementation; implementation and ownership validation pending.
Tracking: [issue #1](https://github.com/alex-1974/error-d/issues/1).

## Decision

`Result!(T, E)` has two completed outcomes (success and failure) and an explicit
empty storage state. It is a value type marked `@mustuse`. Only named factories
create completed outcomes. An empty result is a programming-state issue, not a
failure in the consumer's error domain.

This document fixes state and access semantics. It does not select a storage
backend, promise a binary layout, or settle copy/move/borrow mechanics.

## Alternatives and rationale

| Model | Benefit | Cost / reason not selected |
| --- | --- | --- |
| Two states, default success with `T.init` | `!hasError` implies success | An unassigned result can look successful; requires a meaningful default success, including for resource types. |
| Two states, default failure with `E.init` | Default is not success | Invents a domain failure; `E.init` need not be a valid error. |
| Two states, default construction disabled | Ordinary declarations require explicit construction | D still allows `Result.init`; disabling construction alone does not solve its semantics. |
| Success / failure / empty | No fabricated success or domain error; observable, harmless initial storage | All consumers must account for empty; `!hasError` is not a success test. |

Choose the last model. Allow ordinary default declarations: silently hiding the
third state behind disabled construction would not remove it. This is a
D-specific tradeoff, not a claim that a third state is universally preferable.

Use the name `empty`, rather than `uninitialized`: the container itself is safely
initialized. There is no active `T` or `E` object in this state. Its destruction
must not invoke a payload destructor. Physical bytes and union layout are not a
public guarantee. Issue #4 must prove the chosen backend can meet this contract.

## State table

| Construction | `state` | `hasValue` | `hasError` | `isEmpty` |
| --- | --- | --- | --- | --- |
| `Result!(T, E).init`, default declaration | `empty` | false | false | true |
| `success(value)` | `success` | true | false | false |
| `failure(error)` | `failure` | false | true | false |
| `Result!(void, E).success()` | `success` | true | false | false |

`ResultState` is a closed enum with `empty`, `success`, and `failure`; no integer
encoding is public. Queries are side-effect-free, non-allocating, `@safe`,
`pure`, `nothrow`, `@nogc`, and available on const/immutable instances. No implicit
boolean conversion is provided. Producers of a completed operation must return
success or failure, never empty. Empty is not cancellation, EOF, or needInput.

The state after extraction or moving, and exception guarantees for replacement,
are decided in #2. No operation may publish a success/failure tag before its
payload is live, or leave a tag referring to a destroyed payload.

## Public surface for implementation

The following is API notation, not a compilable implementation:

```d
enum ResultState { empty, success, failure }

@mustuse struct Result(T, E)
{
    static Result success(T value); // only when T is not void
    static Result success();        // only when T is void
    static Result failure(E error);

    ResultState state() const;
    bool hasValue() const;
    bool hasError() const;
    bool isEmpty() const;

    // Checked, non-consuming copy access; enabled only when the copy is legal.
    T value();                      // void value() for void success
    E error();
    // Const overloads copy from the qualified payload without casting away const.

    // Named handlers in this order; exactly the active handler runs.
    // Return types must be identical (including all void); no reference returns.
    auto match(S, F, N)(scope S onSuccess, scope F onFailure, scope N onEmpty);
}
```

Factories are not implicit conversions. `Result!(int, int)` is unambiguous:
`success(7)` and `failure(7)` select different branches. No `E == 0`, string,
exception base class, formatter or shared error interface is required.

Payload category target: enums, scalars, pointers, slices, class references and
struct values, including resource-owning/noncopyable structs. `T` may be `void`;
`E` must be a non-void storable value type. Function values (as opposed to
function pointers/delegates), tuples and reference types are not direct stored
payloads. Qualifiers are preserved; operations unavailable for a particular
payload must fail at compile time rather than bypass its restrictions. Exact
constraints and support for resource/qualified payloads must be proven in #2/#4;
this ADR does not claim those implementations already exist. Thread transport
eligibility is separate (#10).

### Access and matching

`value()` copies the success payload; `error()` copies the failure payload.
The original result stays unchanged. For `void`, `value()` only checks success.
Const overloads must not drop transitive const or manufacture a mutable alias.
For instance, a const result holding `int[]` cannot yield a mutable `int[]` by
access. No implicit deep copy is promised.

The initial access surface returns no references into the container. Copy access
and copy-based matching are unavailable when the relevant copy is illegal.
Noncopyable payloads need explicit transfer access from #2 before being usable
as completed owning results. Borrowing/reference access may be added only after
the escape and invalidation contract in #2 is proven; it is not implied by this
API notation.

`match` supplies a copy of the active payload to its handler (no argument for
void success or empty). All three handlers must be valid for the corresponding
branch and return exactly the same type; missing handlers are compile errors.
Mutable and const overloads obey the same payload qualification rules as copy
access. User callbacks may allocate or throw; attributes must follow the actual
operations, not be promised unconditionally.

Wrong-branch `value()`/`error()` access, including access on empty, calls an
unconditional non-returning contract-failure path. The initial policy is process
termination (`abort`), in debug and release. Do not implement it solely using a
removable assert or an input contract. Do not return an inactive payload, a
fallback value, or an ordinary `E`, and do not introduce a recoverable exception
into `nothrow` code. The primitive tests in #6 must verify this behavior in child
processes. Diagnostics are not a string-format guarantee. There is no unchecked
public accessor in v0.1.

A wrong-branch call is a programming error; invalid external input belongs in
`failure(E)`. `match` is preferred when the caller needs exhaustive handling.

## Consumer examples (planned API)

These examples document the API to implement in #6; they are not advertised as
runnable against an existing package.

```d
alias ReadResult = Result!(Document, ParseError);
auto result = readDocument(input);

if (result.hasValue)
{
    useDocument(result.value());
}
else if (result.hasError)
{
    report(result.error());
}
else
{
    abort(); // Producer returned no completed outcome.
}
```

Do not use `if (!result.hasError)` as permission to read `value()`.
For copyable payloads, exhaustive handling is:

```d
result.match(
    (Document document) { useDocument(document); },
    (ParseError error) { report(error); },
    () { abort(); }
);

alias SaveResult = Result!(void, SaveError);
auto saved = SaveResult.success();
saved.match(
    () { markSaved(); },
    (SaveError error) { report(error); },
    () { abort(); }
);
```

The application imports its chosen reporting functions and `abort`; these are
not dependencies imposed on domain error types.

## Ignored-result diagnostics

Use `core.attribute.mustuse` on the Result struct. Discarding a Result expression
must be a compiler error on the supported compiler matrix. Explicit
`cast(void)` is an intentional escape hatch. Assignment to an unread variable
still satisfies this compiler check: `@mustuse` does not prove that errors were
handled, nor that an empty value was checked. No throwing/destructor-based
"unhandled error" mechanism is introduced.

## Evidence and follow-up

Run `python3 probes/issue-1/run.py`. On the installed DMD 2.111.0 and LDC 1.42.0
(D frontend 2.112.1), debug and release probes confirm:

- disabled default construction rejects an ordinary declaration;
- explicit `.init` remains expressible;
- `@mustuse` permits assignment and explicit discard, and rejects implicit discard.

These are language probes, not Result implementation, lifetime or safety tests.
They establish feasibility on the installed versions only; minimum supported
versions are selected in #4. Package and CI integration belong to #5.

References:

- [D struct initialization](https://dlang.org/spec/struct.html#struct-constructor)
- [D mustuse attribute](https://dlang.org/phobos/core_attribute.html)
- [D type qualifiers](https://dlang.org/spec/const3.html)
- [Rust Result: two completed variants](https://doc.rust-lang.org/std/result/)
- [C++ expected: value-or-error lifetime](https://eel.is/c++draft/expected)

Follow-ups: #2 ownership and borrowing; #3 error composition; #4 backend and
compiler support; #6 production implementation; #9 attribute and safety tests.

Implementation clarification: callbacks are ordinary scope arguments, not alias
parameters. Alias callbacks capturing local state produce deprecated dual-context
functions on the supported DMD baseline. The ordinary argument form supports
closures without those deprecations and preserves the three-handler contract.
