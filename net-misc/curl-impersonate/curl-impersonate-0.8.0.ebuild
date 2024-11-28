# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A Client that groks URLs"
HOMEPAGE="https://curl.se/"
SRC_URI="
	https://github.com/lexiforest/curl-impersonate/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-arch/zstd
	dev-libs/nss
	sys-libs/zlib
"
DEPEND="${RDEPEND}"

