# error-d

[![CI](https://github.com/alex-1974/error-d/actions/workflows/ci.yml/badge.svg)](https://github.com/alex-1974/error-d/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/alex-1974/error-d)](https://github.com/alex-1974/error-d/releases/latest)

Typed results for D libraries: one success/failure mechanism, library-owned error
types and explicit ownership. The default state is empty, never accidental success.

```d
import error_d;

enum ParseError { invalidDigit }
alias R = Result!(int, ParseError);

auto result = R.success(21).map((int n) => n * 2);
assert(result.hasValue && result.value() == 42); // non-consuming copy

auto value = result.takeValue();               // explicit extraction
assert(value == 42 && result.isEmpty);

auto failure = R.failure(ParseError.invalidDigit);
auto message = failure.match(
    (int n) => "success",
    (ParseError e) => "invalid input",
    () => "empty");
assert(message == "invalid input");
```

`Result!(T, E)` supports void success, checked copy access, explicit extraction,
exhaustive matching, `map`, `mapError` and `andThen`. Libraries keep their own
error domains; consumers translate them explicitly with `mapError` before
chaining operations. See the [two-library example](examples/consumer.d).

`@mustuse` catches implicitly discarded results. Wrong-branch access aborts in
all build modes. Payload and callback capabilities determine attributes such as
`@safe`, `nothrow` and `@nogc`; Result does not add thread synchronization.

## Getting started

Tested baselines: DMD 2.111.0 and LDC 1.42.0 on Linux x86_64.

```sh
git clone https://github.com/alex-1974/error-d.git
cd error-d
dub build --compiler=dmd
```

The package is not registered in the DUB registry. For a local consumer, add a
path dependency to its `dub.json`, adjusted to your checkout location:

```json
"dependencies": {
  "error-d": { "path": "../error-d" }
}
```

The core uses Phobos and has no third-party package dependencies. Documentation
generation uses DDox separately.

## Documentation

- [User guide](docs/guide.md): states, ownership, qualifiers, attributes, threads and library boundaries.
- [Complete API contracts](docs/api.md): every operation, including conditional declarations.
- [Build the searchable DDox reference](docs/documentation.md): local HTML and CI download.
- [Examples](examples/consumer.d): composing independent libraries and error domains.
- [Safety review](docs/security-review.md) and [design decisions](docs/decisions).
- [Performance measurements and benchmark correction](docs/performance-v04.md).

Build the HTML API reference with DUB, Python 3 and DMD installed:

```sh
python3 tools/build_docs.py
```

Open `build/ddox/index.html`. The wrapper builds in a temporary directory so
DDox's default output cannot overwrite the handwritten guides. CI builds the
same reference and uploads it as the `ddox-documentation` artifact. DDox can
omit declarations inside `static if`; the complete API contracts cover those
methods, including both `success` factory forms.

## Verification

```sh
python3 tests/run.py
```

The full suite needs both compilers, Python 3 and `cc`; select one with
`python3 tests/run.py --compiler dmd`. It checks debug/release, DIP1000, ownership,
compile rejection, fatal access, threads and D/C integration fixtures.
[CI](.github/workflows/ci.yml) also runs the adversarial regression probes,
benchmark verification and the documentation build.

## Status

Current release: v0.4.0. There are no external consumers yet; integration examples
are repository fixtures. See the [changelog](CHANGELOG.md),
[milestones](https://github.com/alex-1974/error-d/milestones) and
[issues](https://github.com/alex-1974/error-d/issues).

Source contracts are explicit; a stable cross-version binary ABI is not
promised. Performance depends on payload, compiler and operation; measured gains
are not a zero-overhead guarantee.

License: [BSL-1.0](LICENSE).
