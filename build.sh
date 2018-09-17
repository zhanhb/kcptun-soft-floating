#!/bin/sh
GO_VERSION=1.11
UPX_VERSION=3.95
wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz
tar -xf go${GO_VERSION}.linux-amd64.tar.gz
wget https://github.com/upx/upx/releases/download/v${UPX_VERSION}/upx-${UPX_VERSION}-amd64_linux.tar.xz
tar -xf upx-${UPX_VERSION}-amd64_linux.tar.xz
wget https://dl.google.com/go/go${GO_VERSION}.src.tar.gz
tar -xf go${GO_VERSION}.src.tar.gz
export PATH="`pwd`/go/bin:$PATH"
export PATH="`pwd`/upx-${UPX_VERSION}-amd64_linux:$PATH"
export GOPATH="`pwd`/gopath"
export PATH="$GOPATH/bin:$PATH"

