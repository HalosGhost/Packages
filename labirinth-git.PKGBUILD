# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_name=labirinth
pkgname="${_name}-git"
pkgver=0.26.79812ad
pkgrel=4
pkgdesc="A Three-Dimensional first-person shooter written in Bash"
arch=('any')
url="https://github.com/EvilTosha/${_name}"
license=('GPLv3')
depends=('bash')
makedepends=('git')
source=("${_name}::git+${url}.git")
sha256sums=('SKIP')

pkgver() {
  cd "${_name}"
  echo "0.$(git rev-list --count HEAD).$(git describe --always)"
}

package() {
  cd "${_name}"
  install -Dm755 lab2.sh "${pkgdir}/usr/bin/${_name}"
  find "${pkgdir}" -type d -name .git -exec rm -r '{}' +
}

# vim:set ts=2 sw=2 et:
