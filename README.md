# error-d

Typed result values for D libraries: a shared success/failure mechanism with
library-owned error types, explicit ownership and a safe empty default state.

```d
import error_d;
enum ParseError { invalidDigit }
alias R = Result!(int, ParseError);
auto result = R.success(21).map((int n) => n * 2);
```

The core supports `Result!(T, E)`, void success, checked copy access, explicit
extraction, exhaustive matching and error/success composition. `@mustuse` catches
implicitly discarded results. Empty is neither success nor a domain failure.

See the [API reference](docs/api.md), [safety review](docs/security-review.md)
and [performance comparison](docs/performance-optimization.md). Read the [user guide](docs/guide.md) for state, ownership, compiler attributes,
thread and binary-boundary contracts. See [examples](examples/consumer.d) for
cross-library error composition and [decisions](docs/decisions) for the rationale.

## Build and verification

Tested baselines: DMD 2.111.0 and LDC 1.42.0 on Linux x86_64.

```sh
dub build --compiler=dmd
python3 tests/run.py
```

The full suite needs both compilers, Python 3 and `cc`; select one with
`python3 tests/run.py --compiler dmd`. It checks debug/release, DIP1000, ownership,
compile rejection, expected fatal access, threads and D/C library consumers.

## Status

Current release: v0.3.0. See the [changelog](CHANGELOG.md),
[milestones](https://github.com/alex-1974/error-d/milestones) and
[issues](https://github.com/alex-1974/error-d/issues).

License: [BSL-1.0](LICENSE). No DUB registry registration is assumed.
