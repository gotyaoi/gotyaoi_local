# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{8..13} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION="Python types for Language Server Protocol."
HOMEPAGE="
	https://pypi.org/project/lsprotocol/
	https://github.com/microsoft/lsprotocol
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-python/attrs-21.3.0[${PYTHON_USEDEP}]
	>dev-python/cattrs-23.2.1[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
