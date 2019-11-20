# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PV=${PV/_beta/-beta.}
MY_P=${PN}-${MY_PV}

PYTHON_COMPAT=( python3_{5,6} )
inherit distutils-r1

DESCRIPTION="Google Photos Sync downloads your Google Photos to the local file system. It will backup all the photos the user uploaded to Google Photos, but also the album information and additional Google Photos ‘Creations’ (animations, panoramas, movies, effects and collages)."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://pypi.org/project/gphotos-sync/ https://github.com/gilesknap/gphotos-sync"

KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="MIT"
IUSE=""

BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
DEPEND="
        dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/appdirs
	media-gfx/exif
	dev-python/enum34
	dev-python/pyyaml
	dev-python/requests-oauthlib
	dev-python/selenium
	dev-python/urllib3
"

RDEPEND="${DEPEND}"

RESTRICT="test" # tests broken in 1.4.3 already

S="${WORKDIR}/${MY_P}"

src_prepare() {

	default

}

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	cd test || die
	"${EPYTHON}" testall.py || die "Testsuite failed"
}

python_install_all() {
	distutils-r1_python_install_all

	# doman 
	# use doc && local HTML_DOCS=( docs/_build/html/. )
	# einstalldocs
}
