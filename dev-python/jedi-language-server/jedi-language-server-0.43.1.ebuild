# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..13} pypy3 )

inherit distutils-r1

DESCRIPTION="A Python Language Server powered by the latest version of Jedi."
HOMEPAGE="
	https://pypi.org/project/jedi-language-server/
	https://github.com/pappasam/jedi-language-server
"
SRC_URI="
	https://github.com/pappasam/jedi-language-server/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-python/jedi-0.19.2[${PYTHON_USEDEP}]
	>=dev-python/pygls-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/cattrs-23.1.2[${PYTHON_USEDEP}]
	=dev-python/docstring-to-markdown-0*[${PYTHON_USEDEP}]
	>=dev-python/lsprotocol-2023.0.1[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
