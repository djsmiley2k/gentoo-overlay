# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
EGO_PN="github.com/odeke-em/extractor"

inherit golang-vcs golang-build

DESCRIPTION="Link extractor for Go."
HOMEPAGE="https://github.com/odeke-em/extractor"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="	>=dev-lang/go-1.2
		dev-go/go-text
		dev-vcs/git"
RDEPEND="${DEPEND}"
