# Maintainer: Evangelos Foutras <evangelos@foutrelis.com>
# Contributor: tobias <tobias funnychar archlinux.org>

pkgname=xfce4-panel
pkgver=4.14.4
pkgrel=1
pkgdesc="Panel for the Xfce desktop environment"
arch=('x86_64')
url="https://www.xfce.org/"
license=('GPL2')
groups=('xfce4')
depends=('exo' 'garcon' 'libxfce4ui' 'xfconf' 'libwnck3' 'hicolor-icon-theme'
         'desktop-file-utils')
makedepends=('intltool' 'gobject-introspection' 'vala')
source=(https://archive.xfce.org/src/xfce/$pkgname/${pkgver%.*}/$pkgname-$pkgver.tar.bz2)
sha256sums=('8e5ea79412ba84cfada897ff309cbe2cd4aca16b9bd4f93df060229528576fd5')

prepare() {
  if [ -z ${_XKCD_SPACING_VALUE+x} ]; then _XKCD_SPACING_VALUE='8'; fi
  _XKCD_CSPACING_VALUE="#define SPACING    (2)"
  _XKCD_NSPACING_VALUE="#define SPACING    ($_XKCD_SPACING_VALUE)"
  cd "$srcdir/$pkgname-$pkgver"
  cd plugins/systray
  sed -i "s/$_XKCD_CSPACING_VALUE/$_XKCD_NSPACING_VALUE/g" systray-box.c
}

build() {
  cd "$srcdir/$pkgname-$pkgver"

  ./configure \
    --prefix=/usr \
    --sysconfdir=/etc \
    --libexecdir=/usr/lib \
    --localstatedir=/var \
    --disable-static \
    --enable-gio-unix \
    --disable-debug
  make
}

package() {
  cd "$srcdir/$pkgname-$pkgver"
  make DESTDIR="$pkgdir" install
}

# vim:set ts=2 sw=2 et:
