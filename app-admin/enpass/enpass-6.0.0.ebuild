# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

DESCRIPTION="Enpass password manager"
HOMEPAGE="https://www.enpass.io/"
SRC_URI="https://apt.enpass.io/pool/main/e/enpass/enpass_6.0.0.230_amd64.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

inherit unpacker

S="${WORKDIR}"

#src_unpack() {
# unpack_deb ./enpass_6.0.0.230_amd64.deb
#}

src_install() {
insinto /; doins -r usr/; doins -r opt/
}
