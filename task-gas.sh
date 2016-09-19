#!/bin/sh

set -eu

for dir in ./*/; do
    dir=${dir%*/}
    dir=${dir##*/}

    (cd $dir && gas $GAS_OPTS -out ../results/$dir.json ./...)
done

rm results/results.json
