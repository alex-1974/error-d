# error-d

A shared, typed result abstraction for D libraries.

The planned core is `Result!(T, E)`: a common success-or-failure contract,
with each library defining its own error type.

## Design goals

- Consistent result handling across library boundaries.
- Explicit success and failure construction.
- Correct payload lifetime, copying, and ownership semantics.
- Preserve `@safe`, `@nogc`, `nothrow`, and `pure` where supported by payloads and operations.
- Explicit error conversion and lossless composition of error domains.
- Documented initialization, access, extraction, and thread-transfer contracts.

The result container does not provide automatic synchronization or a stable
cross-language binary interface. Logging and presentation belong to consumers.

## Status

Design phase. No implementation is available yet. Initialization semantics,
ownership operations, and the public API remain to be finalized.
