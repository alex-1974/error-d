#!/usr/bin/env python3
"""Production API checks, including compile rejection and fatal-access behavior."""
import argparse
import pathlib
import resource
import signal
import subprocess
import tempfile

root = pathlib.Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--compiler', action='append', choices=['dmd', 'ldc2'])
args = parser.parse_args()
resource.setrlimit(resource.RLIMIT_CORE, (0, 0))

def run(command, cwd, *, success=True):
    completed = subprocess.run(command, cwd=cwd, text=True, capture_output=True, timeout=60)
    if success and completed.returncode:
        raise RuntimeError(' '.join(map(str, command)) + '\n' + completed.stdout + completed.stderr)
    return completed

for compiler in args.compiler or ['dmd', 'ldc2']:
    for release in (False, True):
        with tempfile.TemporaryDirectory(prefix='error-d-tests-') as directory:
            # All output (including objects) goes outside the checkout.
            flags = [compiler, '-de', '-preview=dip1000', '-I' + str(root / 'source')]
            if release:
                flags += ['-release', '-O']
            source = str(root / 'source/error_d.d')
            for fixture in sorted((root / 'tests').glob('*.d')):
                binary = str(pathlib.Path(directory) / fixture.stem)
                run([*flags, '-of=' + binary, str(fixture), source], directory)
                if fixture.stem == 'misuse':
                    for mode in ['empty-value', 'error-value', 'success-error', 'empty-error',
                                 'take-value', 'take-error', 'void-value', 'void-take']:
                        outcome = run([binary, mode], directory, success=False)
                        if outcome.returncode != -signal.SIGABRT:
                            raise RuntimeError(f'{compiler} {mode}: expected SIGABRT, got {outcome.returncode}')
                else:
                    run([binary], directory)
            # Build two domain libraries separately, then link their consumer.
            imports = '-I' + str(root / 'examples/libraries')
            archives = []
            for name in ('calculation', 'decimal_parser'):
                archive = str(pathlib.Path(directory) / (name + '.a'))
                run([*flags, imports, '-lib', '-of=' + archive,
                     str(root / 'examples/libraries' / (name + '.d'))], directory)
                archives.append(archive)
            binary = str(pathlib.Path(directory) / 'consumer')
            run([*flags, imports, '-of=' + binary, str(root / 'examples/consumer.d'),
                 source, *archives], directory)
            run([binary], directory)
            c_object = str(pathlib.Path(directory) / 'harness_c.o')
            run(['cc', '-std=c11', '-Wall', '-Wextra', '-Werror', '-c',
                 str(root / 'examples/c/consumer.c'), '-o', c_object], directory)
            c_binary = str(pathlib.Path(directory) / 'consumer_c')
            run([*flags, imports, '-of=' + c_binary, str(root / 'examples/c/adapter.d'),
                 source, archives[1], c_object], directory)
            run([c_binary], directory)
            for fixture in sorted((root / 'tests/negative').glob('*.d')):
                expected = fixture.read_text().splitlines()[0].split('expected: ', 1)[1]
                outcome = run([*flags, '-c', '-of=' + str(pathlib.Path(directory) / 'negative.o'),
                               str(fixture)], directory, success=False)
                diagnostic = outcome.stdout + outcome.stderr
                if outcome.returncode == 0 or expected.lower() not in diagnostic.lower():
                    raise RuntimeError(f'{fixture.name}: expected rejection containing {expected!r}\n{diagnostic}')
            print(f'{compiler} {"release" if release else "debug"}: production, negative and fatal-access tests passed', flush=True)
