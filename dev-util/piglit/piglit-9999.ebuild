# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils git-r3

DESCRIPTION="an OpenGL/OpenCL test suite"
HOMEPAGE="http://cgit.freedesktop.org/piglit"
EGIT_REPO_URI="git://anongit.freedesktop.org/piglit"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-lang/python:2.7
	dev-python/mako
	dev-python/numpy
	dev-python/six
	media-libs/freeglut
	virtual/glu
	virtual/opengl
	media-libs/waffle
	x11-libs/libXrender
	x11-libs/libX11
	media-libs/mesa
	"

DEPEND="${RDEPEND}"

src_prepare() {
	sed -e 's/\t/        /' -i tests/util/gen_dispatch.py
}
