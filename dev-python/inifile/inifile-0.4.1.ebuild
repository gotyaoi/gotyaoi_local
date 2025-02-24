# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{6..13} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="
	https://pypi.org/project/inifile/
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

distutils_enable_tests pytest
