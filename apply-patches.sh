#!/usr/bin/env bash
set -e 
git clone https://git.suckless.org/slock
pushd slock
git apply ../fix-arch-linux-compilation.patch
git apply ../dracula-theme.patch
make
sudo make install
popd
rm -rf slock
