# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# based on pypy-bin-1.4.1 from purak overlay
# $Header: $

EAPI=2

MY_PN="pypy"
S="${WORKDIR}/${MY_PN}-${PV}"

DESCRIPTION="A fast, compliant alternative implementation of the Python language"
HOMEPAGE="http://www.pypy.org"
SRC_URI="
	amd64? (
		https://bitbucket.org/pypy/pypy/downloads/${MY_PN}-${PV}-linux64.tar.bz2
	)
	x86? (
		https://bitbucket.org/pypy/pypy/downloads/${MY_PN}-${PV}-linux.tar.bz2
	)
"

LICENSE="MIT"
SLOT="2"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=sys-libs/zlib-1.1.3
	virtual/libffi
	virtual/libintl
	dev-libs/expat
	sys-libs/ncurses[tinfo]
	app-arch/bzip2
	dev-db/sqlite:3
	dev-libs/openssl"
DEPEND="${RDEPEND}"

src_unpack() {
	[ "${A}" != "" ] && unpack ${A}
}

src_install() {
	dodir /opt/${P} || die 'dodir failed'
	insinto /opt/${P}
	doins -r ${S}/* || die 'doins failed'
	fperms a+x /opt/${P}/bin/${MY_PN}
	dosym /opt/${P}/bin/${MY_PN} /usr/bin/${MY_PN} || die 'dosym failed'
	dodoc LICENSE
}

pkg_postinst() {
	ewarn "the linux binaries are provided for Ubuntu, if your distribution is"
	ewarn "not exactly this one, it may not work, likely: pypy: error while"
	ewarn "loading shared libraries: …. You may need to hack a lot"
}
