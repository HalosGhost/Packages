# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_gitname=asteroid
pkgname="${_gitname}-git"
pkgver=1.2.1.2.g6d23595
pkgrel=5
pkgdesc="A modern version of the arcade classic Asteroids"
arch=('i686' 'x86_64')
url="https://github.com/chazomaticus/${pkgname//-/.}"
license=('GPLv3')
depends=('freeglut' 'gtk2' 'hicolor-icon-theme' 'sdl_mixer')
makedepends=('git' 'cmake')
source=("${pkgname//-git/}::git://github.com/chazomaticus/${pkgname//-/.}")
sha256sums=('SKIP')

pkgver() {
  cd "${_gitname}"
  git describe --always | sed 's|-|.|g'
}

prepare() {
  cd "${_gitname}"
  cmake -DCMAKE_INSTALL_PREFIX=/usr
  sed -i 's_lcairo_lcairo -lm_' CMakeFiles/asteroid.dir/link.txt
}

package() {
  cd "${_gitname}"
  make DESTDIR="${pkgdir}" PREFIX=/usr install
  find "${pkgdir}" -type d -name .git -exec rm -r '{}' +
}

# vim:set ts=2 sw=2 et:
