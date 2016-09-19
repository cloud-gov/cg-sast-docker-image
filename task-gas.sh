#!/bin/sh

set -eu

for dir in ./*/; do
    dir=${dir%*/}
    dir=${dir##*/}

    (cd $dir && gas $GAS_OPTS -fmt json -out ../results/$dir.json ./...)
done

cd results && rm results.json && collate results.json *.json
