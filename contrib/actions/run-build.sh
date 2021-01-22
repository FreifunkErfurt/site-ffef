#!/bin/sh

set -e

export BROKEN=1
export GLUON_AUTOREMOVE=1
export GLUON_DEPRECATED=1
export GLUON_SITEDIR="."
export GLUON_TARGET=$1
export BUILD_LOG=1

make -C gluon update GLUON_SITEDIR="$GLUON_SITEDIR" V=1

make -C gluon GLUON_TARGET=$1 GLUON_BRANCH=nightly GLUON_SITEDIR="$GLUON_SITEDIR" V=1 -j`nproc`

