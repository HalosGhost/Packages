# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
# Contributor: Themaister <maister@archlinux.us>
_name=libretro-super
pkgname="${_name}-git"
pkgver=202.cfe4328
pkgrel=1
epoch=1
pkgdesc="A collection of libretro implementations for RetroArch."
arch=('i686' 'x86_64')
url="https://github.com/libretro/${_name}"
license=('various')
provides=('libretro')
source=("${_name}::${url//https/git}.git")
sha256sums=('SKIP')

pkgver() {
   cd "${_name}"
   echo "$(git rev-list --count HEAD).$(git describe --always )"
}

build() {
   cd "${_name}"
   ./libretro-fetch.sh
   RARCH_DIST_DIR="${srcdir}/dist/libretro" $BUILD_EXPERIMENTAL ./libretro-build.sh
   # Run BUILD_EXPERIMENTAL='true' makepkg -s to build with experimental cores
}

package() {
   cd dist/libretro
   install -d "${pkgdir"/usr/lib/libretro
   install -m644 *.so "${pkgdir}"/usr/lib/libretro/
}

