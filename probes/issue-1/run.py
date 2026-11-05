#!/usr/bin/env python3
"""Check language assumptions on installed compilers; no Result API is implemented."""
import argparse
import pathlib
import subprocess
import tempfile

source = pathlib.Path(__file__).with_name('language.d').resolve()
parser = argparse.ArgumentParser()
parser.add_argument('--compiler', action='append', choices=['dmd', 'ldc2'])
args = parser.parse_args()
for compiler in args.compiler or ['dmd', 'ldc2']:
    for release in (False, True):
        with tempfile.TemporaryDirectory(prefix='error-d-issue1-') as directory:
            output = str(pathlib.Path(directory) / 'probe')
            flags = ['-release'] if release else []
            base = [compiler, *flags, '-of=' + output, str(source)]
            subprocess.run(base, cwd=directory, check=True, capture_output=True, text=True)
            subprocess.run([output], cwd=directory, check=True)
            rejected = subprocess.run([*base, '-version=Discard' if compiler == 'dmd'
                                       else '-d-version=Discard'], cwd=directory,
                                      capture_output=True, text=True)
            diagnostic = rejected.stdout + rejected.stderr
            if rejected.returncode == 0 or '@mustuse' not in diagnostic or 'ignored value' not in diagnostic:
                raise RuntimeError(f'{compiler}: missing mustuse discard diagnostic: {diagnostic}')
            print(f'{compiler} {"release" if release else "debug"}: init and mustuse probes passed')
