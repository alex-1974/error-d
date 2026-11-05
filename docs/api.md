# v0.1 public API

Import `error_d`. `ResultState` has `empty`, `success`, `failure`.

`Result!(T, E)` exposes ValueType=T and ErrorType=E. E is a non-void storable value;
T can also be void. Payload cleanup and transfer must compile @safe nothrow.
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
