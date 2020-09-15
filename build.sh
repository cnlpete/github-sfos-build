#!/bin/bash

set -ex

sdk-assistant target list

cd /home/nemo/build

sudo mkdir -p /github/workspace/RPMS
cp -r /github/workspace/* /home/nemo/build

mb2 -t SailfishOS-${INPUT_RELEASE}-${INPUT_ARCH} build
sudo cp -r RPMS/*.rpm /github/workspace/RPMS
