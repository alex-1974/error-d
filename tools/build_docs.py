#!/usr/bin/env python3
"""Build DDox in isolation so its default docs/ output cannot overwrite guides."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import tempfile

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', default='dmd', choices=['dmd', 'ldc2'])
args = parser.parse_args()
output = root / 'build/ddox'
with tempfile.TemporaryDirectory(prefix='error-d-ddox-') as directory:
    stage = Path(directory)
    recipe = json.loads((root / 'dub.json').read_text())
    shutil.copytree(root / 'source', stage / 'source')
    recipe['-ddoxFilterArgs'] = ['--min-protection=Public', '--only-documented']
    (stage / 'dub.json').write_text(json.dumps(recipe, indent=2) + '\n')
    subprocess.run(['dub', 'build', '--build=ddox', '--compiler=' + args.compiler],
                   cwd=stage, check=True)
    docs = stage / 'docs'
    for relative in ['index.html', 'error_d.html', 'error_d/Result.html',
                     'error_d/Result.failure.html', 'error_d/Result.takeValue.html',
                     'error_d/Result.mapError.html', 'error_d/ResultState.html']:
        if not (docs / relative).is_file():
            raise RuntimeError('DDox omitted required public documentation: ' + relative)
    if any((docs / ('error_d/' + name + '.html')).exists()
           for name in ['PlainStorage', 'Result.storage', 'Result.plainFailure', 'Result.replace']):
        raise RuntimeError('DDox exposed private storage')
    if output.exists():
        shutil.rmtree(output)
    output.mkdir(parents=True, exist_ok=True)
    shutil.copytree(docs, output, dirs_exist_ok=True)
    shutil.copyfile(stage / 'docs.json', output / 'docs.json')
print('Documentation: ' + str(output / 'index.html'))
