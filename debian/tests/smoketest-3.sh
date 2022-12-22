#!/bin/sh

set -eux

cd "$AUTOPKGTEST_TMP"

cat > E40.py <<EOF
import os, sys
EOF

python3 -m pep8 E40.py | grep E401
pep8 E40.py | grep E401
