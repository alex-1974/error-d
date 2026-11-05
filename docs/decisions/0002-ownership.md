# ADR 0002: Ownership and lifetime

Status: accepted. Tracking: #2; implementation #7 and verification #9.

## Contract

- Result owns the active payload object. Pointees and backing storage follow the
  payload's own semantics: copying a slice aliases its buffer; copying a class
  reference aliases its object. No implicit deep copy or unique ownership claim.
- Copy construction is available only when both alternatives can be copied.
  A throwing copy leaves its source unchanged; the failed destination is not a
  completed object. Copy access copies only the selected branch.
- Factories accept values; callers explicitly use `core.lifetime.move` when
  transferring a noncopyable lvalue. A factory that cannot construct its payload
  throws before it publishes a completed result.
- Result assignment is transactional: first prepare an independent argument,
  then transfer it into the destination. A preparation failure leaves the old
  destination intact. Self-copy assignment is allowed; if its copy throws, the
  original is unchanged. Payload assignment overloads are not called.
- v0.1 supports payloads with `@safe nothrow` destruction. Throwing or `@system`
  destructors are rejected. This makes replacement cleanup nonthrowing.
- `takeValue()` / `takeError()` transfer the active payload and leave the Result
  empty. They are mutable-only, reject wrong branches with the same unconditional
  termination as copy access, and do not return references. Void `takeValue()`
  empties a successful void result. Transfer does not call a payload copy hook.
- `core.lifetime.move(result)` resets a source requiring destruction to its init
  state according to D's move rules. Do not promise reset for trivially movable
  types: D may retain a bitwise-identical source when it has no destructor.
  Use `takeValue` / `takeError` for the guaranteed explicit-empty contract.
- Default/empty destruction never invokes a T/E destructor. Destruction after
  extraction may destroy a payload's moved-from `.init` object internally;
  resource types must support D's ordinary moved-from destruction semantics.
- No exposed storage, pointer, `ref` getter, ref callback parameter into storage,
  or ref-returning callback. Matching receives independent copies. A callback
  may mutate the original container without invalidating its argument object.
  Aliases inside that copy remain aliases under the payload's rules.

## Borrowing policy

Result does not extend the lifetime of slices, pointers, or borrowed handles.
Default public reference access is deliberately absent. Safe producers returning
borrowed data must use D's scope/return lifetime annotations and compile with
`-preview=dip1000`; a wrapper must not hide a scope reference escape. Caller-owned
memory may outlive the result and vice versa only when the underlying ownership
contract allows it. `@trusted` cannot be used to accept arbitrary borrowed data.

The library does not model Rust lifetimes or Send/Sync. These are additional
constraints for a consumer/transport, not properties implied by Result.

## Verification matrix

#7/#9 must exercise scalar/enum, aliased slice, class reference, noncopyable
resource, throwing copy, non-default-constructible payload, qualified payload,
source/destination self assignment, all branch transitions and explicit take.
Counters must detect leaks and double release; compile-fail fixtures must cover
copying noncopyable results, mutating const data and escaping stack references.
Debug/release runs use both DMD and LDC and explicit checks that survive release.

Initial backend evidence: `probes/ownership/backend.d` checks noncopyable transfer,
resource count, throwing-copy source preservation, empty init and CTFE. It is not
a substitute for tests against the production Result.

References: [core.lifetime](https://dlang.org/phobos/core_lifetime.html),
[struct lifetime](https://dlang.org/spec/struct.html),
[memory safety](https://dlang.org/spec/memory-safe-d.html).
