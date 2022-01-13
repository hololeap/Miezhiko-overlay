# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="http://haskellstack.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.5.6.0:=[profile?]
	>=dev-haskell/annotated-wl-pprint-0.7.0:=[profile?]
	>=dev-haskell/ansi-terminal-0.10.3:=[profile?]
	>=dev-haskell/async-2.2.3:=[profile?]
	>=dev-haskell/attoparsec-0.13.2.5:=[profile?]
	>=dev-haskell/base64-bytestring-1.1.0.0:=[profile?]
	>=dev-haskell/cabal-3.2.1.0:=[profile?]
	>=dev-haskell/casa-client-0.0.1:=[profile?]
	>=dev-haskell/casa-types-0.0.1:=[profile?]
	>=dev-haskell/colour-2.3.5:=[profile?]
	>=dev-haskell/conduit-1.3.4.1:=[profile?]
	>=dev-haskell/conduit-extra-1.3.5:=[profile?]
	>=dev-haskell/cryptonite-0.27:=[profile?]
	>=dev-haskell/cryptonite-conduit-0.2.2:=[profile?]
	>=dev-haskell/echo-0.1.4:=[profile?]
	>=dev-haskell/exceptions-0.10.4:=[profile?]
	>=dev-haskell/extra-1.7.9:=[profile?]
	>=dev-haskell/file-embed-0.0.14.0:=[profile?]
	>=dev-haskell/filelock-0.1.1.5:=[profile?]
	>=dev-haskell/fsnotify-0.3.0.1:=[profile?]
	>=dev-haskell/generic-deriving-1.13.1:=[profile?]
	>=dev-haskell/githash-0.1.5.0:=[profile?]
	>=dev-haskell/hackage-security-0.6.0.1:=[profile?]
	>=dev-haskell/hashable-1.3.0.0:=[profile?]
	>=dev-haskell/hi-file-parser-0.1.2.0:=[profile?]
	>=dev-haskell/hpack-0.33.4:=[profile?]
	>=dev-haskell/http-client-0.6.4.1:=[profile?]
	>=dev-haskell/http-client-tls-0.3.5.3:=[profile?]
	>=dev-haskell/http-conduit-2.3.8:=[profile?]
	>=dev-haskell/http-download-0.2.0.0:=[profile?]
	>=dev-haskell/http-types-0.12.3:=[profile?]
	>=dev-haskell/memory-0.15.0:=[profile?]
	>=dev-haskell/microlens-0.4.11.2:=[profile?]
	>=dev-haskell/mintty-0.1.2:=[profile?]
	>=dev-haskell/mono-traversable-1.0.15.1:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?]
	>=dev-haskell/mustache-2.3.1:=[profile?]
	>=dev-haskell/neat-interpolation-0.5.1.2:=[profile?]
	>=dev-haskell/network-uri-2.6.4.1:=[profile?]
	>=dev-haskell/open-browser-0.2.1.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.14.3.0:=[profile?]
	>=dev-haskell/optparse-simple-0.1.1.3:=[profile?]
	>=dev-haskell/pantry-0.5.2:=[profile?]
	>=dev-haskell/path-0.7.0:=[profile?]
	>=dev-haskell/path-io-1.6.2:=[profile?]
	>=dev-haskell/persistent-2.11.0.4:=[profile?]
	>=dev-haskell/persistent-sqlite-2.11.0.4:=[profile?]
	>=dev-haskell/persistent-template-2.9.1.0:=[profile?]
	>=dev-haskell/primitive-0.7.1.0:=[profile?]
	>=dev-haskell/project-template-0.2.0.1:=[profile?]
	>=dev-haskell/regex-applicative-text-0.1.0.1:=[profile?]
	>=dev-haskell/retry-0.8.1.2:=[profile?]
	>=dev-haskell/rio-0.1.18.0:=[profile?]
	>=dev-haskell/rio-prettyprint-0.1.1.0:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?]
	>=dev-haskell/split-0.2.3.4:=[profile?]
	>=dev-haskell/stm-2.5.0.0:=[profile?]
	>=dev-haskell/streaming-commons-0.2.2.1:=[profile?]
	>=dev-haskell/tar-0.5.1.1:=[profile?]
	>=dev-haskell/temporary-1.3:=[profile?]
	>=dev-haskell/text-1.2.4.1:=[profile?]
	>=dev-haskell/text-metrics-0.3.0:=[profile?]
	>=dev-haskell/th-reify-many-0.1.9:=[profile?]
	>=dev-haskell/tls-1.5.5:=[profile?]
	>=dev-haskell/typed-process-0.2.6.0:=[profile?]
	>=dev-haskell/unicode-transforms-0.3.7.1:=[profile?]
	>=dev-haskell/unix-compat-0.5.3:=[profile?]
	>=dev-haskell/unliftio-0.2.14:=[profile?]
	>=dev-haskell/unordered-containers-0.2.13.0:=[profile?]
	>=dev-haskell/vector-0.12.1.2:=[profile?]
	>=dev-haskell/yaml-0.11.5.0:=[profile?]
	>=dev-haskell/zip-archive-0.4.1:=[profile?]
	>=dev-haskell/zlib-0.6.2.3:=[profile?]
	>=dev-lang/ghc-8.6.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( >=dev-haskell/hspec-2.7.1
		>=dev-haskell/quickcheck-2.14.2
		>=dev-haskell/raw-strings-qq-1.1
		>=dev-haskell/smallcheck-1.2.1 )
"

PATCHES=( "${FILESDIR}/${PN}-2.5.1.1-disable-network-tests.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'semigroups >=0.19.1' 'semigroups >=0.18.5'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer-mode \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static \
		--flag=-supported-build
}

src_test() {
	HOME="${HOME}" ./setup test
}
