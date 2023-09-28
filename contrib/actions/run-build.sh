#!/bin/sh

set -e

export BROKEN=1
export GLUON_AUTOREMOVE=1
export GLUON_TARGET="$1"
export BUILD_LOG=1

echo "Workaround broken git:// Github repos"
git config --global url."https://github.com/".insteadOf git://github.com/

echo "make update ($GLUON_TARGET)"
make update 2>&1 | tee -a logs/$GLUON_TARGET.log
echo "make $2 ($GLUON_TARGET)"
make "$2" 2>&1 | tee -a logs/$GLUON_TARGET.log
ls -l
cd output
ls -l
