#!/bin/sh

CGBC_SOURCE="/home/m0/git/coreland/cgbc"

cp "${CGBC_SOURCE}/SUPPORTED" "meta/supported" || exit 1

./local-mk-spec.sh "${CGBC_SOURCE}/cgbc-bounded_stacks.ads" > "src/cgbc_bounded_stacks.txt" || exit 1
./local-mk-spec.sh "${CGBC_SOURCE}/cgbc-bounded_hashed_maps.ads" > "src/cgbc_bounded_hashed_maps.txt" || exit 1
./local-mk-spec.sh "${CGBC_SOURCE}/cgbc-bounded_generic_strings.ads" > "src/cgbc_bounded_generic_strings.txt" || exit 1

cp ${CGBC_SOURCE}/cgbc-bounded_strings.ads src/a-cgbc-bounded_strings.ads
cp ${CGBC_SOURCE}/cgbc-bounded_wide_strings.ads src/a-cgbc-bounded_wide_strings.ads
cp ${CGBC_SOURCE}/cgbc-bounded_wide_wide_strings.ads src/a-cgbc-bounded_wide_wide_strings.ads
