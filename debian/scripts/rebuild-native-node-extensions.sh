#!/bin/bash

_electron_ver=$1
_arch=$2

for _module in @vscode/spdlog @parcel/watcher keytar native-is-elevated native-keymap native-watchdog node-pty windows-foreground-love; do
  pushd node_modules/$_module
  HOME=$HOME/.electron-gyp node-gyp rebuild --target=$_electron_ver --arch=$_arch --dist-url=https://electronjs.org/headers --debug --silly
  mkdir build/Release
  cp build/Debug/*.node build/Release
  rm -rf build/Debug
  popd
done
