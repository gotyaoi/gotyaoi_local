# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} pypy3 )

inherit distutils-r1

DESCRIPTION="A sane Markdown parser with useful plugins and renderers"
HOMEPAGE="
	https://pypi.org/project/mistune/
	https://github.com/lepture/mistune
"
SRC_URI="
	https://github.com/lepture/mistune/archive/refs/tags/v${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

distutils_enable_tests pytest
