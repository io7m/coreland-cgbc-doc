#!/bin/sh

CGBC_SOURCE="/home/m0/git/coreland/cgbc"

./local-mk-spec.sh "${CGBC_SOURCE}/cgbc-bounded_stacks.ads" > "src/cgbc_bounded_stacks.txt" || exit 1
./local-mk-spec.sh "${CGBC_SOURCE}/cgbc-bounded_hashed_maps.ads" > "src/cgbc_bounded_hashed_maps.txt" || exit 1
