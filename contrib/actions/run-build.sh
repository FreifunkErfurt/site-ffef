#!/bin/sh

set -e

export BROKEN=1
export GLUON_AUTOREMOVE=1
export GLUON_DEPRECATED="full"
export GLUON_SITEDIR="./site/"
export GLUON_TARGET=$1
export BUILD_LOG=1

echo "Workaround broken git:// Github repos"
git config --global url."https://github.com/".insteadOf git://github.com/

echo "Baue Target: $GLUON_TARGET"
ls -l
echo "make update"
make update
echo "make"
make
ls -l
cd output
ls -l
