# Building the API reference

The public source uses DDoc comments. DDox turns the compiler's documentation
JSON into linked HTML with a symbol index and search. The handwritten
[complete API contracts](api.md) and [user guide](guide.md) complement it.

## Local build

Install Python 3, DUB and a supported D compiler, then run from the checkout:

```sh
python3 tools/build_docs.py
# Or use LDC:
python3 tools/build_docs.py --compiler ldc2
```

Open `build/ddox/index.html` in your browser. Generation needs network access on
its first run: DUB fetches/builds DDox and its dependencies in the DUB cache.
The validated local tool version is DDox 0.16.24 with DUB 1.40.0. The library
itself does not depend on DDox. Linux may also need development libraries for
DDox's TLS stack; CI installs `libssl-dev`.

The script copies the source and recipe into a temporary directory, invokes
DUB's built-in DDox build, filters public documented declarations, checks key
pages and copies HTML/assets plus the filtered `docs.json` to `build/ddox/`.
The temporary directory is removed afterward. Generated output is ignored by
Git. Running plain `dub build --build=ddox` in the repository writes into
`docs/`, alongside the guides; use the wrapper to keep generated files separate.

## Download from CI

Open the [CI workflow runs](https://github.com/alex-1974/error-d/actions/workflows/ci.yml),
choose a successful run for the desired revision, and download the
`ddox-documentation` artifact. Extract it and open `index.html`. GitHub may
require sign-in for artifact downloads. Artifact retention is 30 days.
This is downloadable HTML; no public documentation website is configured.

## Coverage and generator limits

The generated reference documents the module, states, type parameters, aliases,
queries, failure factory, accessors, extraction, assignment and combinators.
DDox/compiler JSON can omit declarations nested in `static if`, including the
value-taking success overload and some copy hooks. The Result overview and success page explain both
factory calls; [api.md](api.md) is the complete operation inventory.
`@mustuse` and inferred attributes are described in prose because generic
declarations cannot display every instantiated payload's attributes.

The wrapper checks essential output pages and excludes private storage from the
reference. It does not claim that DDox renders every conditional declaration.

Upstream references: [DDox usage and known limitations](https://github.com/dlang/ddox),
[DUB documentation builds](https://dub.pm/dub-reference/buildtypes/).
