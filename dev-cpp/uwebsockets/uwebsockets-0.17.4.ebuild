# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple, secure & standards compliant web I/O for the most demanding of applications"
HOMEPAGE="https://github.com/uNetworking/uWebSockets"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/uNetworking/uWebSocket"
else
	SRC_URI="https://github.com/uNetworking/uWebSockets/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~arm64 ~x86"
	S="${WORKDIR}/uWebSockets-${PV}"
fi

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND=""
BDEPEND=""

src_compile() {
	return 0
}

src_install() {
	insinto /usr/include/uwebsockets/
	doins -r src/*

	rm "${D}/usr/include/uwebsockets/f2/LICENSE.txt"
}
