# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{8..13} pypy3 )

inherit distutils-r1

DESCRIPTION="A pythonic generic language server (pronounced like 'pie glass')"
HOMEPAGE="
	https://pypi.org/project/pygls/
	https://github.com/openlawlibrary/pygls
"
SRC_URI="
	https://github.com/openlawlibrary/pygls/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-python/cattrs-23.1.2[${PYTHON_USEDEP}]
	>=dev-python/lsprotocol-2023.0.1[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
