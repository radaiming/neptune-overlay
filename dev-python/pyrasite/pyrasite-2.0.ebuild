# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils

DESCRIPTION="Tools for injecting arbitrary code into running Python processes"
HOMEPAGE="http://pyrasite.com/"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="GPLv3"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND=">=sys-devel/gdb-7.3"
