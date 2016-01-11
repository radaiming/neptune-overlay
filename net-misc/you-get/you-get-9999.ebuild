# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
PYTHON_COMPAT=( python3_{3,4,5} )

inherit distutils-r1 git-r3

DESCRIPTION="You-Get is a tiny command-line utility to download media contents (videos, audios, images) from the Web"
HOMEPAGE="https://you-get.org/"
EGIT_REPO_URI="https://github.com/soimort/you-get.git"
EGIT_BRANCH="develop"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="virtual/ffmpeg"
DEPEND="${RDEPEND}"
