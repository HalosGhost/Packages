# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_name=tmxgta
pkgname="${_name}-git"
pkgver=f915325
pkgrel=1
pkgdesc="A "
arch=('i686' 'x86_64')
url="https://github.com/vitamins/${_name}"
license=('GPLv3')
makedepends=('git')
depends=('tmux' 'dialog' 'arch-install-scripts')
optdepends=('reflector')
source=("${_name}::${url//https/git}.git")
sha256sums=('SKIP')

pkgver() {
  cd "${_name}"
  echo "$(git rev-list --count HEAD).$(git describe --always )"
}

package() {
  cd "${_name}"
  install -Dm755 "${_name}" "${pkgdir}/usr/bin/${_name}"
  install -Dm755 "${_name}-backend" "${pkgdir}/usr/bin/${_name}-backend"
}

# vim:set ts=2 sw=2 et:
