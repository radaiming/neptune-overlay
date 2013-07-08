# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2} )

inherit distutils

DESCRIPTION="a port of the serialize and unserialize functions of php to python"
HOMEPAGE="https://github.com/mitsuhiko/phpserialize"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

DOCS=( README )
