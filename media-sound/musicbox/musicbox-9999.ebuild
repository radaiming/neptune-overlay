# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-2

DESCRIPTION="Netease cmdline music player"
HOMEPAGE="https://github.com/darknessomi/musicbox"
EGIT_REPO_URI="https://github.com/darknessomi/musicbox.git"
EGIT_MASTER="master"

LICENSE="MIT"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND="
	media-sound/mpg123
	net-misc/aria2
	x11-libs/libnotify
	dev-python/requests
	dev-libs/keybinder:0[python]
"
DEPEND="${RDEPEND}"
