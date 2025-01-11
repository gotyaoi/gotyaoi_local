# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{6..13} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION="A static content management system."
HOMEPAGE="
	https://pypi.org/project/Lektor/
	https://github.com/lektor/lektor
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	dev-python/babel[${PYTHON_USEDEP}]
	>=dev-python/click-6.0[${PYTHON_USEDEP}]
	dev-python/flask[${PYTHON_USEDEP}]
	>=dev-python/inifile-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/jinja2-3.0[${PYTHON_USEDEP}]
	dev-python/markupsafe[${PYTHON_USEDEP}]
	dev-python/marshmallow[${PYTHON_USEDEP}]
	>=dev-python/marshmallow-dataclass-8.5.9[${PYTHON_USEDEP}]
	=dev-python/mistune-2*[${PYTHON_USEDEP}]
	>=dev-python/pillow-6[${PYTHON_USEDEP}]
	dev-python/pip[${PYTHON_USEDEP}]
	dev-python/python-slugify[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/watchfiles-0.12[${PYTHON_USEDEP}]
	>=dev-python/werkzeug-2.1.0[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
