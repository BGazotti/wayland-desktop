# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="A library for managing configuration files, written for wayfire"
HOMEPAGE="https://github.com/WayfireWM/wf-config"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/WayfireWM/${PN}.git"
	KEYWORDS=""
else
	SRC_URI="https://github.com/WayfireWM/${PN}/archive/${PV}.tar.gz"
	KEYWORDS="~amd64 ~arm64 ~x86"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-libs/libevdev
	media-libs/glm
	~gui-libs/wlroots-0.9.1
"

RDEPEND="
	${DEPEND}
"

BDEPEND="virtual/pkgconfig
	dev-libs/wayland-protocols
"
