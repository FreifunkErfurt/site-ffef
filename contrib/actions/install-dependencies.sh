#!/bin/sh

set -e

cp /home/runner/work/site-ffef/site-ffef/contrib/actions/sources.list /etc/apt/sources.list
rm -rf /etc/apt/sources.list.d
apt update
apt install subversion \
  build-essential \
    ca-certificates \
    clang \
    ecdsautils \
    file \
    gawk \
    git \
    libelf-dev \
    libncurses5-dev \
    libnss-unknown \
    libssl-dev \
    llvm \
    lua-check \
    openssh-client \
    python3 \
    python3-dev \
    python3-pyelftools \
    python3-setuptools \
    qemu-utils \
    rsync \
    shellcheck \
    swig \
    time \
    unzip \
    wget \
    zlib1g-dev 
apt clean
rm -rf /var/lib/apt/lists/*
dpkg -l
echo "ENDE install-dependencies.sh "
