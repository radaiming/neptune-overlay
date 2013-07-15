# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# by @radaiming <radaiming@gmail.com>
# $Header: $

EAPI="4-python"
PYTHON_MULTIPLE_ABIS="1"
PYTHON_RESTRICTED_ABIS="2.[0-4] *-jython *-pypy-*"

inherit distutils

DESCRIPTION="Python interface to NetworkManager via DBus and CLI config tool"
HOMEPAGE="https://pypi.python.org/pypi/python-networkmanager/"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="GPL"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""

RDEPEND="
	dev-python/dbus-python
	net-misc/networkmanager
	"
DEPEND="${RDEPEND}"

src_test() {
	building() {
		python_execute "$(PYTHON)" setup.py install
	}
	python_execute_function building
}
