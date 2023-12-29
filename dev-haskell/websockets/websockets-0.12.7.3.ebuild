# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A sensible and clean way to write WebSocket-capable servers in Haskell"
HOMEPAGE="https://jaspervdj.be/websockets"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="example"

RDEPEND=">=dev-haskell/async-2.2:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	>=dev-haskell/base64-bytestring-0.1:=[profile?] <dev-haskell/base64-bytestring-1.3:=[profile?]
	<dev-haskell/bytestring-builder-0.11:=[profile?]
	>=dev-haskell/case-insensitive-0.3:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/clock-0.8:=[profile?] <dev-haskell/clock-0.9:=[profile?]
	>=dev-haskell/entropy-0.2.1:=[profile?] <dev-haskell/entropy-0.5:=[profile?]
	>=dev-haskell/network-2.3:=[profile?] <dev-haskell/network-3.2:=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/sha-1.5:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/streaming-commons-0.1:=[profile?] <dev-haskell/streaming-commons-0.3:=[profile?]
	>=dev-haskell/text-0.10:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-2.15
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag example example)
}
