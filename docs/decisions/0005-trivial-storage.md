# ADR 0005: Pointer-free trivial storage fast path

Status: implemented for v0.3. Tracking: #17.

## Decision

Keep the v0.2 SumType backend and lifetime/source-copy restrictions for general
payloads. Add a private data-only union plus byte tag for a narrowly proven
subset: unqualified arithmetic/character values, enums of eligible underlying
types, static arrays of eligible elements, and eligible structs recursively.
Structs must have no indirections, nested context, copy/destruction/move hooks,
overloaded assignment or alias-this, and must be assignable. Qualified payloads
and all other types retain SumType. Compiler assertions also verify that the
selected storage has no indirections or elaborate transfer behavior.

Only this subset uses compiler-generated Result copies. There is no user code
that could invalidate a borrowed source while such a copy occurs. Small results
can consequently use the compiler's register-return convention instead of the
nontrivial-copy ABI. Pointer/reference/resource payloads retain the v0.2 manual
copy constructors, source-reference copying policy and reentrant cleanup guard.

## Construction and access

Factories construct the selected member in a named return object, set its tag,
and let NRVO/POD return lowering deliver it. No full inactive-union initialization
or destructive move chain is required. Empty `.init` still has a defined tag and
initialized representation. Checked getters copy only the active payload;
private helpers never expose a reference into the union.

Fast assignment is an ordinary whole-storage value copy. Explicit take copies
the selected trivial payload and empties the tag. No user code can run between
those steps. Inactive bytes may remain unspecified, including after a factory or
take; the fast representation has no typed reference slots. Conservative native
stack scanning may still recognize incidental pointer-like bit patterns, as with
other raw value/padding bytes. Raw serialization, inactive-member reads and whole-object byte
comparison are not part of the public API. Do not infer equality or a binary
wire format from the representation.

Targeted inline hints, single-expression trivial combinators and a noreturn
contract-failure helper improve optimization while retaining every branch check.
Callback order/short-circuiting, qualifiers, empty behavior, @mustuse and
conditional compiler attributes are unchanged. Complex callback result types use
the general path; producing a resource from a trivial value must remain safe.

## Trusted-code audit additions

- The new storage container itself has no methods or trusted code.
- `plainSuccess`/`plainFailure` run only under `usePlain`. The recursively proven
  subset permits no user copy, assignment, cleanup, conversion alias or
  relocation code. Every active field and the tag are written before return;
  void success has no value field to read. Unspecified inactive bytes contain no
  traced references. No heap allocation or caller reference is introduced.
- `plainValue`/`plainError` test the tag and return by value. A wrong branch still
  calls abort in all builds. They invoke no user code or ref-returning callbacks.
- The existing trusted retirement/take helpers are used only by the general
  backend in the new public paths and preserve the v0.2 invariants.

## Compatibility and validation

The public source API is unchanged. This is not binary-compatible with v0.2 for
all instantiations: POD/triviality and return conventions can change even if
sizeof stays the same. Recompile all D consumers against one error-d version.
The versioned C adapter remains an independent interface, not a generic Result
ABI. Unsupported Phobos Variant transports remain unsupported.

Tests cover active fields of large values/errors, narrow values, enums, floating
values, zero-length arrays, const views, default-construction-disabled structs,
void success, assignment/take and both storage paths' fatal access. Compile-time
checks establish that pointer-containing, qualified-field, alias-this and custom
assignment types remain on the general path. Existing ownership, qualification,
source-copy, relocation and destructor-reentrancy regressions remain required on
DMD/LDC in debug and optimized release. Performance evidence uses the same
benchmark program and flags for both the v0.2 source snapshot and the candidate.
