#!/bin/sh

set -e

cp /home/runner/work/site-ffef/site-ffef/contrib/actions/sources.list /etc/apt/sources.list
rm -rf /etc/apt/sources.list.d
apt update
apt install subversion build-essential libncurses-dev python2.7 python3 zlib1g-dev
apt clean
rm -rf /var/lib/apt/lists/*
ln -s ../ gluon/site
mkdir logs
mkdir output
chown runner:docker logs output
pwd
ls -l
df -h
dpkg -l
echo "ENDE install-dependencies.sh "

