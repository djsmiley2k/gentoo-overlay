# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
EGO_PN="github.com/odeke-em/drive/cmd/drive"

inherit golang-vcs golang-build

DESCRIPTION="Google Drive access in Go"
HOMEPAGE="https://github.com/odeke-em/drive"

LICENSE="Apache"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="	>=dev-lang/go-1.2
		dev-go/go-text
		dev-vcs/git
                dev-go/boltdb
                dev-go/pb
                dev-go/go-isatty
                dev-go/cache
                dev-go/cli-spinner
                dev-go/exponential-backoff
                dev-go/extractor
                dev-go/log
                dev-go/meddler
                dev-go/pretty-words
                dev-go/semalim
                dev-go/statos"

RDEPEND="${DEPEND}"
