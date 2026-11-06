# Public API (v0.4)

The [generated DDox reference](documentation.md) complements this complete
operation inventory, including declarations the generator may omit.

Import `error_d`. `ResultState` has `empty`, `success`, `failure`.

`Result!(T, E)` exposes ValueType=T and ErrorType=E. E is a non-void storable value;
T can also be void. Payload cleanup and transfer must compile @safe nothrow.
Payloads with elaborate move hooks are rejected. Reference-copy payload copying
is @system; postblits and noncopyable take follow their own operation attributes.
The concrete supported operations remain conditional on payload capabilities.

| Operation | Semantics |
| --- | --- |
| `.init` / default declaration | Empty, no active payload |
| `R.success(value)` | Construct success; for void use `R.success()` |
| `R.failure(error)` | Construct failure |
| `r.state` | ResultState, available on const/immutable |
| `r.hasValue`, `r.hasError`, `r.isEmpty` | Explicit state queries; no implicit boolean conversion |
| `r.value()` | Checked non-consuming success copy; void checks success |
| `r.error()` | Checked non-consuming failure copy |
| `r.takeValue()` | Checked mutable-only transfer, source becomes empty |
| `r.takeError()` | Checked mutable-only transfer, source becomes empty |
| `r = other` | Prepare copy/transfer before replacing old payload; no payload opAssign |
| `r.match(successFn, failureFn, emptyFn)` | Exhaustive copy handling; identical handler return types |
| `r.map(fn)` | Success copy -> new value or void; preserve copied error/empty |
| `r.mapError(fn)` | Error copy -> new error; preserve copied success/empty |
| `r.andThen(fn)` | Success copy -> Result; exact same copied error type required |

No implicit result conversion, unchecked access, ref getter or equality API is
provided. Wrong-branch access aborts in every build. Callback ref returns are
rejected; callbacks are ordinary scope arguments, not alias parameters.

Const access preserves qualifiers. For const views composition may therefore
produce qualified payload/error types: use explicit conversion/copy policy
rather than casting away const. Copy/match/composition of noncopyable payloads
is unavailable; explicit take transfers ownership. See the [guide](guide.md) for
examples, supported configurations and thread/ABI limits.

Destructible instantiations have a private destruction-state flag and a
scope-qualified Result-level opPostMove. Copy/access/mutation of a dying owner
and moving it out of its own destructor fail fast. Ordinary owning Result moves
remain supported. Replacement commits before invoking retired payload cleanup.
See [security review](security-review.md) for the reasons and exact restrictions.

Trivial pointer-free instantiations use a private POD storage path; all others
retain the general v0.2 backend. Recompile every D consumer: compiler-generated
copies and return conventions can change even when sizeof does not. Inactive
bytes are unspecified and no raw serialization, bytewise equality or erasure
guarantee is provided. See [ADR 0005](decisions/0005-trivial-storage.md).
