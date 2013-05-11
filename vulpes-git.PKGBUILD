# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_name=vulpes
pkgname="${_name}-git"
pkgver=9.a4d6a1b
pkgrel=1
pkgdesc="A lightweight statusbar program for use with Alopex"
arch=('any')
url="https://github.com/halosghost/${_name}.git"
license=('CCPL:CC-BY-SA')
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
