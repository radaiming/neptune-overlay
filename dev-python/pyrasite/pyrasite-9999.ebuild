# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_4} )

inherit distutils-r1 git-2

DESCRIPTION="Tools for injecting arbitrary code into running Python processes"
HOMEPAGE="http://pyrasite.com/"
EGIT_REPO_URI="https://github.com/lmacken/pyrasite.git"
EGIT_MASTER="develop"

LICENSE="GPLv3"
KEYWORDS=""
SLOT="0"
IUSE=""

RDEPEND=">=sys-devel/gdb-7.3"
