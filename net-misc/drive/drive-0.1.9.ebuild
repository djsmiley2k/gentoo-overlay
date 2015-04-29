# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="drive is a tiny program to pull or push Google Drive files."
HOMEPAGE="https://github.com/odeke-em/drive"
SRC_URI="https://github.com/odeke-em/drive/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=">=dev-lang/go-1.2
		dev-vcs/git"
RDEPEND=""

src_prepare() {
	export GOPATH="${PWD}"

	go get github.com/odeke-em/drive/cmd/drive
	go get github.com/odeke-em/drive/config
	go get github.com/rakyll/command
}

src_compile() {
	cd cmd/drive
	go build -o "${PN}" main.go
}

src_install() {
	dobin "bin/${PN}"
}
