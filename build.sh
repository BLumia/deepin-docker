#!/bin/bash

set -e

apt update

export DEBIAN_FRONTEND=noninteractive

apt install multistrap -y

multistrap -f apricot.multistrap || true

cp deepin.gpg /apricot-rootfs/etc/apt/trusted.gpg.d

multistrap -f apricot.multistrap

cp sources.list /apricot-rootfs/etc/apt/sources.list
