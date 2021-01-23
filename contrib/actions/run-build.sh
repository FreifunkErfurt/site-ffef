#!/bin/sh

set -e

export BROKEN=1
export GLUON_AUTOREMOVE=1
export GLUON_DEPRECATED=1
export GLUON_SITEDIR="../"
export GLUON_TARGET=$1
export BUILD_LOG=1

echo "Baue Target: "$GLUON_TARGET
echo "make -C gluon update GLUON_SITEDIR="$GLUON_SITEDIR" -j1 V=s"
make -C gluon update GLUON_SITEDIR="$GLUON_SITEDIR" -j1 V=s

echo "-C gluon GLUON_TARGET="$GLUON_TARGET" GLUON_BRANCH=nightly GLUON_SITEDIR="$GLUON_SITEDIR" V=1 -j`nproc`"
make -C gluon GLUON_TARGET="$GLUON_TARGET" GLUON_BRANCH=nightly GLUON_SITEDIR="$GLUON_SITEDIR" V=1 -j`nproc`

