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

Design phase. No implementation is available yet.

[ADR 0001](docs/decisions/0001-result-states-and-access.md) defines states,
initialization and access: completed success/failure outcomes, an explicit empty
default state, checked access and `@mustuse`. Ownership operations and storage
implementation remain to be finalized.

Language probes: `python3 probes/issue-1/run.py` (requires DMD and LDC).

Work is tracked in the [milestones](https://github.com/alex-1974/error-d/milestones).
