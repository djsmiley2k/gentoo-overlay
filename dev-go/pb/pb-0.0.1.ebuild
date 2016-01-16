# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
EGO_PN="https://github.com/cheggaaa/pb"

inherit golang-vcs golang-build

DESCRIPTION="Console progress bar for Golang"
HOMEPAGE="https://github.com/cheggaaa/pb"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="	>=dev-lang/go-1.2
		dev-go/go-text
		dev-vcs/git"
RDEPEND="${DEPEND}"
