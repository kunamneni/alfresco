#!/usr/bin/env bash

echo "Installing s3fuse"

# Install s3fuse
curl -LO https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.83.tar.gz
tar -xvf v1.83.tar.gz
cd s3fs-fuse-1.83/
./autogen.sh
./configure
make
make install
