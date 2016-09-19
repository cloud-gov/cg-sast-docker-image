#!/usr/bin/env python3

import json
import sys

def get_file(fn):
    with open(fn) as fh:
        return json.loads(fh.read())

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("USAGE {0} <output file> <input files>".format(sys.argv[0]))
        print("Creates a json document in output file that contains the contents of input files.")
        raise SystemExit

    results = {}

    for fn in sys.argv[2:]:
        results[fn] = get_file(fn)

    with open(sys.argv[1], 'w') as fh:
        fh.write(json.dumps(results))