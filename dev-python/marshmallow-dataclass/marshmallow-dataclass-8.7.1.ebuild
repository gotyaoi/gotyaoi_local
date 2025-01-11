# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{12..13} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION="Python library to convert dataclasses into marshmallow schemas."
HOMEPAGE="
	https://pypi.org/project/marshmallow-dataclass/
	https://github.com/lovasoa/marshmallow_dataclass
"
SRC_URI="
	https://github.com/lovasoa/marshmallow_dataclass/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-python/marshmallow-3.18.0[${PYTHON_USEDEP}]
	>=dev-python/typing-inspect-0.9.0[${PYTHON_USEDEP}]
	=dev-python/typeguard-4*[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
