#!/bin/bash

_electron_ver=$1
_arch=$2
shift 2

if [ ! -z $_NODE_GYP_DEBUG ]; then
  _debug=--debug
fi

for _module in $@; do
  pushd node_modules/$_module
  HOME=$HOME/.electron-gyp node-gyp rebuild $_debug \
    --target=$_electron_ver \
    --arch=$_arch \
    --dist-url=https://electronjs.org/headers \
    --silly
  if [ ! -z $_NODE_GYP_DEBUG ]; then
    mkdir build/Release
    cp build/Debug/*.node build/Release
    rm -rf build/Debug
  fi
  popd
done
