# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_name=enlighten
pkgname="${_name}-git"
pkgver=f915325
pkgrel=1
pkgdesc="A small utility to modify the brightness of keyboard and monitor LEDs"
arch=('any')
url="https://github.com/halosghost/${_name}.git"
license=('GPLv3')
makedepends=('git')
source=("${_name}::git://github.com/HalosGhost/${_name}.git")
sha256sums=('SKIP')

pkgver() {
  cd "${_name}"
  echo "$(git rev-list --count HEAD).$(git describe --always )"
}

prepare() {
  cd "${_name}"
  make
}

package() {
  cd "${_name}"
  make DESTDIR="${pkgdir}" PREFIX=/usr install
}

# vim:set ts=2 sw=2 et:
