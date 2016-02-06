# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Modified from mrueg overlay with several fixes

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit python-any-r1 cmake-utils
CMAKE_BUILD_TYPE="Release"

DESCRIPTION="The Beignet GPGPU System for Intel Ivybridge GPUs"
HOMEPAGE="http://wiki.freedesktop.org/www/Software/Beignet/"

LICENSE="GPL-2"
SLOT="0"

inherit git-r3
EGIT_REPO_URI="git://anongit.freedesktop.org/beignet"
KEYWORDS=""

DEPEND=">=sys-devel/gcc-4.6
    ${PYTHON_DEPS}"
RDEPEND="app-eselect/eselect-opencl
    media-libs/mesa
    sys-devel/clang
    >=sys-devel/llvm-3.3
    x11-libs/libdrm
    x11-libs/libXext
    x11-libs/libXfixes"

pkg_setup() {
    python_setup
}
IBEIGNET_DIR=/usr/$(get_libdir)/OpenCL/vendors/intel-beignet
ARCH_NUM=""

src_prepare() {
    if [[ ${ARCH} == "amd64" ]]; then
        ARCH_NUM="64"
    fi
    echo "${IBEIGNET_DIR}/lib${ARCH_NUM}/beignet/libcl.so" > intelbeignet.icd
    cmake-utils_src_prepare
}

src_configure() {
    local mycmakeargs=( -DCMAKE_INSTALL_PREFIX="${IBEIGNET_DIR}/" )
    cmake-utils_src_configure
}

src_install() {
    cmake-utils_src_install

    insinto /etc/OpenCL/vendors/
    doins intelbeignet.icd

    dodoc -r  docs

    if [[ ${ARCH} == "amd64" ]]; then
        ARCH_NUM="64"
    fi
    dosym lib${ARCH_NUM}/beignet/libcl.so "${IBEIGNET_DIR}"/libOpenCL.so.1
    dosym lib${ARCH_NUM}/beignet/libcl.so "${IBEIGNET_DIR}"/libOpenCL.so
    dosym lib${ARCH_NUM}/beignet/libcl.so "${IBEIGNET_DIR}"/libcl.so.1
    dosym lib${ARCH_NUM}/beignet/libcl.so "${IBEIGNET_DIR}"/libcl.so
}
