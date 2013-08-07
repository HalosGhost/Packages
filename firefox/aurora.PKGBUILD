# Maintainer: Sam Stuewe <halosghost at archlinux dot info>
_name=firefox
_channel=aurora
pkgname="${_name}-${_channel}"
_milestone=24.0a2
pkgver=24.0a2.20130704004107
pkgrel=1
pkgdesc="Firefox - Aurora Channel"
_locale="$(locale|grep LANG|cut -d "=" -f2|cut -d "." -f1 )"
url="http://www.mozilla.org/${_locale}/${_name}/${_channel}/"
arch=('i686' 'x86_64')
license=('MPL' 'GPL' 'LGPL')
depends=('gtk2' 'libxt' 'startup-notification' 'mime-types' 'dbus-glib' 'alsa-lib' 
         'dbus-glib' 'libnotify' 'desktop-file-utils' 'hicolor-icon-theme' 'libvpx' 
         'libevent' 'nss>=3.14.1' 'hunspell')
_baseurl="http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora"
_file="${_name}-${_milestone}.${_locale//_/-}.linux-${CARCH}"
_srcsum="$(curl -vs "${_baseurl}/${_file}.checksums" 2>&1 | grep bz | grep sha512 | cut -d " " -f1)"
source=("${_baseurl}/${_file}.tar.bz2")
sha512sums=("${_srcsum}")

pkgver() {
   cd "${_name}"
   echo "${_milestone}.$(cat platform.ini|grep BuildID|cut -d "=" -f2 )"
}

package() {
   install -d "${pkgdir}"/{usr/bin,opt}
   mv "${_name}" "${pkgdir}/opt/${pkgname}"
   ln -s "/opt/${pkgname}/${_name}" "${pkgdir}/usr/bin/${_channel}"
   install -Dm644 "${pkgdir}/opt/${pkgname}/browser/icons/mozicon128.png" \
                  "${pkgdir}/usr/share/pixmaps/${pkgname}-icon.png"
}
