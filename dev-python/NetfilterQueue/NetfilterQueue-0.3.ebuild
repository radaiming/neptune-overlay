# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="3.* *-jython *-pypy-*"

inherit distutils

DESCRIPTION="Python bindings for libnetfilter_queue"
HOMEPAGE="https://pypi.python.org/pypi/NetfilterQueue"
SRC_URI="https://pypi.python.org/packages/source/N/${PN}/${P}.tar.gz"

LICENSE="BSD MIT"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="net-libs/libnetfilter_queue"
DEPEND="${RDEPEND}"

src_test() {
	building() {
		python_execute "$(PYTHON)" setup.py install
	}
	python_execute_function building
}
