#!/bin/sh

FILE="$1"
PACKAGE_LINE=`grep '^package' "${FILE}" | awk '{print $2}'` || exit 1
PRIVATE_LINE=`grep -n '^private' "${FILE}" | awk -F: '{print $1}'` || exit 1

head -n "${PRIVATE_LINE}" "${FILE}"

cat <<EOF

  ...

end ${PACKAGE_LINE};
EOF
