#!/bin/bash

set -eu
set -o pipefail

branch=nightly

TARGETS=(
    ar71xx-generic
    ar71xx-tiny
    ar71xx-nand
    ath79-generic
    brcm2708-bcm2708
    brcm2708-bcm2709
    ipq40xx-generic
    ipq806x-generic
    lantiq-xrx200
    lantiq-xway
    mpc85xx-generic
    mpc85xx-p1020
    ramips-mt7620
    ramips-mt7621
    ramips-mt76x8
    ramips-rt305x
    sunxi-cortexa7
    x86-generic
    x86-geode
    x86-64
)

sitedir=$(readlink -f $(dirname $0))
make -C gluon update GLUON_SITEDIR="$sitedir" V=1

for target in ${TARGETS[@]}; do
	echo Building $target
	make -C gluon GLUON_TARGET=$target GLUON_BRANCH=$branch GLUON_SITEDIR="$sitedir" V=1 -j`nproc`
done
