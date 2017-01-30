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
 00aaf689a0a8accb1e916dfe973e1e8e3975c22c 52056 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Checksums-Sha256:
 6b72fafa4c068a95133f5c9fda9fb148c9412db7a932800689e259a1b1c7ef6d 9973680 docker.io_1.10.3.orig.tar.gz
 4b4ec49b99d583800240cfef1da5800f3e3c3ef58b0eeb70922248cde2768693 52056 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Files:
 34da67232c13c0bcc1bba8980151174d 9973680 docker.io_1.10.3.orig.tar.gz
 9ae5c627b96dd5ddddb2ef79dc6410ba 52056 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Original-Maintainer: Paul Tagliamonte <paultag@debian.org>
