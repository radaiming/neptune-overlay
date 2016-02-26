# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

CMAKE_IN_SOURCE_BUILD="1"

inherit cmake-utils

DESCRIPTION="A local DNS server based on WinPcap and LibPcap"
HOMEPAGE="https://github.com/chengr28/Pcap_DNSProxy"
SRC_URI="https://github.com/chengr28/Pcap_DNSProxy/archive/v0.4.5.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="net-libs/libpcap
    dev-libs/libsodium
    sys-devel/bison
    sys-devel/flex
    sys-devel/m4
"

src_configure() {
    local mycmakeargs=(
    -DENABLE_LIBSODIUM=ON
    -DENABLE_PCAP=ON
    )

    cmake-utils_src_configure
}

src_install() {
    dobin ${BUILD_DIR}/Source/KeyPairGenerator/KeyPairGenerator
    dobin ${BUILD_DIR}/Source/Pcap_DNSProxy/Pcap_DNSProxy
    insinto /etc/${PN}
    doins ${BUILD_DIR}/Source/ExampleConfig/{Config.ini,Hosts.ini,IPFilter.ini,Routing.txt,WhiteList.txt}
}
