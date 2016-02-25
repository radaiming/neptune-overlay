# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit toolchain-funcs

DESCRIPTION="Command line torrent viewer and hash checker"
HOMEPAGE="https://sourceforge.net/projects/torrentcheck/"
SRC_URI="mirror://sourceforge/${PN}/${P}.zip"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
S="${WORKDIR}"

src_compile() {
	$(tc-getCC) -O torrentcheck.c sha1.c -o torrentcheck
}

src_install() {
	dobin torrentcheck
}
