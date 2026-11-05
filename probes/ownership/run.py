#!/usr/bin/env python3
import argparse
import pathlib
import subprocess
import tempfile
source = pathlib.Path(__file__).with_name('backend.d').resolve()
parser = argparse.ArgumentParser()
parser.add_argument('--compiler', action='append', choices=['dmd', 'ldc2'])
args = parser.parse_args()
for compiler in args.compiler or ['dmd', 'ldc2']:
    for release in (False, True):
        with tempfile.TemporaryDirectory(prefix='error-d-ownership-') as directory:
            binary = str(pathlib.Path(directory) / 'probe')
            subprocess.run([compiler, '-preview=dip1000', *(['-release'] if release else []),
                            '-of=' + binary, str(source)], cwd=directory, check=True)
            subprocess.run([binary], cwd=directory, check=True)
            print(f'{compiler} {"release" if release else "debug"}: ownership/backend passed')
