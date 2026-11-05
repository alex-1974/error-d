# ADR 0003: Error domains and library boundaries

Status: accepted. Tracking: #3. Implementation examples: #11/#12.

Libraries share `error_d.Result` but own their error types. No common base class,
string formatter or all-domain enum is mandatory. Use `mapError` to deliberately
translate a source error into the receiving API's documented domain. Preserve
causes and context if callers need them; do not silently collapse errors into a
catch-all status. No implicit conversion between Result instantiations.

A consumer may name a lossless union of the relevant errors:

```d
import std.sumtype : SumType;
struct TransportError { int code; }
struct ParseError { size_t byteOffset; }
alias ImportError = SumType!(TransportError, ParseError);
// Result!(Document, ImportError)
// source.mapError!((ParseError e) => ImportError(e))()
```

A higher library can instead publish a stable domain wrapper containing an
operation/category plus a cause variant. A change to its cause alternatives,
public error fields/enums or Result return type is reviewed as an API change.
Adding a closed variant alternative can break exhaustive matching. Do not expose
internal dependency errors accidentally through inferred public return types.

For v0.x, minor releases may change the API; patches preserve it. Consumers pin
a compatible version range and build with a supported compiler/runtime pair.
One resolved error-d version and the same public module/type definition must be
used within a DUB dependency graph. Distinct domain E types are intentionally
not interchangeable even though the Result mechanics are shared.

Generic Result has no stable plugin/C ABI guarantee. Across separately built
binaries use a deliberately versioned C-compatible status/data/opaque-handle
interface. The creating library supplies release functions for owned buffers or
handles; callers do not free memory using another allocator/runtime. Borrowed
memory requires an explicit validity interval. D adapters can construct Result
on each side. Do not pass a tagged template layout, GC object or exception across
an undocumented binary boundary.

No logging is performed in the core. Structured context is domain-owned;
presentation, redaction, retry and logging belong at the consuming boundary.

References: [D ABI](https://dlang.org/spec/abi.html),
[SumType](https://dlang.org/library/std/sumtype.html).
