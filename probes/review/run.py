#!/usr/bin/env python3
"""Replay the review reproductions against a local Git tag or current source."""
import argparse
import json
import pathlib
import resource
import signal
import subprocess
import tempfile

root=pathlib.Path(__file__).resolve().parents[2]
parser=argparse.ArgumentParser()
parser.add_argument('--baseline', help='Local source revision, e.g. v0.1.0')
parser.add_argument('--compiler', action='append', choices=['dmd','ldc2'])
args=parser.parse_args()
resource.setrlimit(resource.RLIMIT_CORE,(0,0))
with tempfile.TemporaryDirectory(prefix='error-d-review-') as directory:
    work=pathlib.Path(directory)
    source=work/'error_d.d'
    if args.baseline:
        contents=subprocess.check_output(['git','show',args.baseline+':source/error_d.d'],cwd=root)
        source.write_bytes(contents)
    else:
        source.write_bytes((root/'source/error_d.d').read_bytes())
    for compiler in args.compiler or ['dmd','ldc2']:
        for release in (False,True):
            for scenario in ['reentrancy','postblit','reference_copy','destruction','destruction_move','relocation']:
                fixture=root/'probes/review'/(scenario+'.d')
                binary=work/'probe'
                cmd=[compiler,'-de','-preview=dip1000','-I'+str(work),'-of='+str(binary),str(fixture),str(source)]
                if release: cmd[1:1]=['-release','-O']
                built=subprocess.run(cmd,cwd=work,capture_output=True,text=True,timeout=60)
                rejected = scenario in ['relocation','reference_copy'] and not args.baseline
                if rejected:
                    expected='storable' if scenario=='relocation' else '@system'
                    if built.returncode==0 or expected not in built.stderr:
                        raise RuntimeError(f'{scenario}: missing expected rejection\n{built.stderr}')
                    observed='compile rejection: '+expected
                else:
                    if built.returncode: raise RuntimeError(built.stderr)
                    ran=subprocess.run([str(binary)],cwd=work,capture_output=True,text=True,timeout=10)
                    if scenario in ['destruction','destruction_move'] and not args.baseline:
                        if ran.returncode!=-signal.SIGABRT: raise RuntimeError('destruction did not abort')
                        observed='SIGABRT'
                    else:
                        if ran.returncode: raise RuntimeError(ran.stderr)
                        observed=ran.stdout.strip()
                        expected={
                            'reentrancy': 'live=-1 error=1' if args.baseline else 'live=0 error=9',
                            'postblit': 'copy-success=false live=1 source-error=9\nafter-copy-live=1' if args.baseline else 'copy-success=true live=1 source-error=9\nafter-copy-live=0',
                            'reference_copy':'length=9 null=true',
                            'destruction':'live=-1',
                            'destruction_move':'live=-1',
                            'relocation':'invalid-destructions=1',
                        }[scenario]
                        if observed!=expected: raise RuntimeError(f'{scenario}: {observed!r} != {expected!r}')
                print(json.dumps(dict(revision=args.baseline or 'working-tree',compiler=compiler,
                    mode='release' if release else 'debug',scenario=scenario,observed=observed)),flush=True)
