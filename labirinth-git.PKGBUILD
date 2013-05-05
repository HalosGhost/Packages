# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
pkgname=labirinth-git
pkgver=0.26.79812ad
pkgrel=4
pkgdesc="A Three-Dimensional first-person shooter written in Bash"
arch=('any')
url="https://github.com/EvilTosha/labirinth.git"
license=('GPLv3')
depends=('bash')
makedepends=('git')
source=("${pkgname//-git/}::git://github.com/EvilTosha/labirinth.git")
sha256sums=('SKIP')

pkgver() {
  cd "${pkgname//-git/}"
  echo "0.$(git rev-list --count HEAD).$(git describe --always)"
}

package() {
  install -Dm755 "${pkgname//-git/}/lab2.sh" "${pkgdir}/usr/bin/${pkgname//-git/}"
  find "${pkgdir}" -type d -name .git -exec rm -r '{}' +
}

# vim:set ts=2 sw=2 et:
