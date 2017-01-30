Format: 3.0 (quilt)
Source: docker.io
Binary: docker.io, vim-syntax-docker, golang-github-docker-docker-dev, golang-docker-dev
Architecture: amd64 arm64 armhf i386 ppc64el s390x all
Version: 1.10.3-0ubuntu6
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Docker Packaging Team <docker-maint@lists.alioth.debian.org>, Tianon Gravi <tianon@debian.org>, Johan Euphrosine <proppy@google.com>
Homepage: https://dockerproject.org
Standards-Version: 3.9.6
Vcs-Browser: https://anonscm.debian.org/cgit/docker/docker.io.git
Vcs-Git: git://anonscm.debian.org/docker/docker.io.git
Testsuite: autopkgtest
Build-Depends: bash-completion, btrfs-tools, debhelper (>= 9), dh-systemd, go-md2man (>= 1.0.3~), golang-go (>= 2:1.4~) | gccgo (>= 4:5~), libapparmor-dev, libdevmapper-dev (>= 2:1.02.68~)
Package-List:
 docker.io deb admin optional arch=amd64,arm64,armhf,i386,ppc64el,s390x
 golang-docker-dev deb oldlibs optional arch=all
 golang-github-docker-docker-dev deb admin optional arch=all
 vim-syntax-docker deb admin optional arch=all
Checksums-Sha1:
 b7ef450c17df31d48bbfd9198b8eeb2dda4e97d1 9973680 docker.io_1.10.3.orig.tar.gz
 0fb369df890747a81482a49aad7d2a76098012fd 51832 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Checksums-Sha256:
 6b72fafa4c068a95133f5c9fda9fb148c9412db7a932800689e259a1b1c7ef6d 9973680 docker.io_1.10.3.orig.tar.gz
 97f54233d84c0908acbdeb025b95739ffb52f5399739d96ca03268f9fac8ee1e 51832 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Files:
 34da67232c13c0bcc1bba8980151174d 9973680 docker.io_1.10.3.orig.tar.gz
 b9b825a51d184018015902ca730ec9f8 51832 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Original-Maintainer: Paul Tagliamonte <paultag@debian.org>
