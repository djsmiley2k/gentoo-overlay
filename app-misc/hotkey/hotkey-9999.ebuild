# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3

DESCRIPTION="Hotkey is a simple program that listens on an evdev input device and reacts by launching a command."
HOMEPAGE="https://wiktorb.eu/hotkey/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/wiktor-b/hotkey.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"



src_unpack() {
	git-r3_unpack
}

src_install() {
    emake DESTDIR="${D}" install

    dodoc README
}
