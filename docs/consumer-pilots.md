# Initial consumer pilots

These are runnable fixtures inside error-d; no external consumer repository or
existing public API has been migrated.

## Checked computation

`examples/libraries/calculation.d` exposes a checked division returning
Result!(double, CalculationError). Zero denominator is a typed failure. The
function and its result construction compile @safe pure nothrow @nogc.

## Parser

`examples/libraries/decimal_parser.d` parses unsigned decimal ASCII. It reports
empty input, invalid digit and uint overflow with a byte offset. The consumer
checks valid input including uint.max, malformed input and overflow. The input
is borrowed only for the duration of parsing; returned errors have no input
buffer alias. All success/error data is value-based and the parser compiles
@safe pure nothrow @nogc.

## Composition and observed changes

`examples/consumer.d` builds a named ImportError variant and composes parsing and
division in one expression: mapError, andThen, mapError. Both source errors retain
their original identity/data. The higher function states an explicit return type
and does not expose an inferred variant accidentally. Tests compile the two
libraries as independent archives before linking the consumer. It also transfers
a noncopyable resource from the calculation archive, takes ownership in the
consumer and checks exactly-once release. The borrowed counter fixture uses
return/scope annotations, including a scope destructor, under DIP1000.

The common handling removes differing success/status conventions at call sites.
It does not remove domain mapping: this example still needs two explicit
wrappers into ImportError. Copy-based composition also remains unsuitable for a
noncopyable owning success; tests/lifetime.d instead uses explicit takeValue.
No timing, code-size or allocation benchmark claim is inferred from these small
examples; @nogc is checked by the compiler for these functions.

A streaming decoder still needs done/needInput/needOutput and progress metadata.
Those are successful continuation states or domain step types, not fabricated
Result failures. If errors also carry consumed/produced byte counts, keep those
fields in a domain result/step/error structure with an explicit validity contract.

## Findings incorporated

- Alias-template callbacks capturing locals emitted DMD dual-context
  deprecations. Result's public callbacks now use ordinary scope arguments.
- Non-default-constructible payloads require explicitly initializing SumType
  storage to its Empty-first .init rather than invoking disabled default
  construction.
- Qualified copying needs explicit Result copy constructors and qualified
  SumType branch lookup; runtime and compile-fail tests cover const slices.
- Standard Phobos Variant/std.concurrency cannot directly store this mustuse
  Result on the baseline versions. tests/threads.d uses a value-only transport
  message. The limitation is public, rather than silently weakening mustuse.
- examples/c builds a real C consumer of a versioned status struct; generic
  Result storage is not used as a cross-language ABI.
