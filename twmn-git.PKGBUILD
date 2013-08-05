# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
# Contributor: Bolivar Stephen <bolivar.stephen@gmail.com>
_name=twmn
pkgname="${_name}-git"
pkgver=134.9f52882
pkgrel=3
pkgdesc="A notification system for tiling window managers"
arch=('any')
url="https://github.com/sboli/twmn"
license=('LGPL3')
depends=('qt4>=4.6' 'boost-libs>=1.46' 'libxext')
makedepends=('git' 'pkg-config' 'boost>=1.46')
replaces=('twmn')
source=("${_name}::${url//https/git}.git")
sha256sums=('SKIP')

pkgver() {
   cd "${_name}"
   echo "$(git rev-list --count HEAD).$(git describe --always )"
}

build() {
   cd "${_name}"
   qmake-qt4
   make
}

package() {
   install -Dm755 "${_name}/bin/${_name}c" "${pkgdir}/usr/bin/${_name}c"
   install -Dm755 "${_name}/bin/${_name}d" "${pkgdir}/usr/bin/${_name}d"
}
