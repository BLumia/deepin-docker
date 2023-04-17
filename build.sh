#!/bin/bash

set -e

apt update

export DEBIAN_FRONTEND=noninteractive

apt install multistrap -y

multistrap -f beige.multistrap || true

cp deepin.gpg /beige-rootfs/etc/apt/trusted.gpg.d

multistrap -f beige.multistrap

cp sources.list /beige-rootfs/etc/apt/sources.list
