#!/usr/bin/env bash

wget https://git.archlinux.org/svntogit/packages.git/plain/trunk/PKGBUILD?h=packages/xfce4-panel -O __PKGBUILD_LATEST.tmp
cat __PKGBUILD_LATEST.tmp | head -n16 > __NEW_FHEADER.tmp
cat PKGBUILD | tail -n +17 > __OLD_FBODY.tmp
rm __PKGBUILD_LATEST.tmp __NEW_FHEADER.tmp __OLD_FBODY.tmp
