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

RDEPEND="x11-libs/libXScrnSaver
sys-process/lsof"

S="${WORKDIR}"

src_install() {
insinto /;

doins -r usr/;

doins -r opt/

fperms 755 /opt/enpass/Enpass
dosym /opt/enpass/Enpass /usr/bin/enpass
}
