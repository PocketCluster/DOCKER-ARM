Format: 3.0 (quilt)
Source: runc
Binary: runc, golang-github-opencontainers-runc-dev
Architecture: any all
Version: 0.1.1-0ubuntu5
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Alexandre Viau <alexandre@alexandreviau.net>, Dmitry Smirnov <onlyjob@debian.org>
Homepage: https://github.com/opencontainers/runc
Standards-Version: 3.9.7
Vcs-Browser: https://anonscm.debian.org/cgit/pkg-go/packages/runc.git
Vcs-Git: https://anonscm.debian.org/pkg-go/packages/runc.git
Build-Depends: debhelper (>= 9), dh-golang, go-md2man, golang-go (>= 2:1.6~) | golang-1.6-go, libapparmor-dev
Package-List:
 golang-github-opencontainers-runc-dev deb devel extra arch=all
 runc deb devel extra arch=any
Checksums-Sha1:
 ca70c97c9211462f774e22f03fec2fe61f45f1ba 496416 runc_0.1.1.orig.tar.gz
 872139f45a6d615704ea961eb43af1383cac6455 11440 runc_0.1.1-0ubuntu5.debian.tar.xz
Checksums-Sha256:
 f9955daed1e73e842b2f28a258fba51f4e72a6b4b64cc3fc06415481d55ce000 496416 runc_0.1.1.orig.tar.gz
 a3a420c8d9fed54c4b6415797100f0344c81ee0fddb26afbb4321dfb617c389e 11440 runc_0.1.1-0ubuntu5.debian.tar.xz
Files:
 d9aaf37331c36e89365b72aac4101fb0 496416 runc_0.1.1.orig.tar.gz
 457abef9d044b685e1a0d9d6bd668f83 11440 runc_0.1.1-0ubuntu5.debian.tar.xz
Original-Maintainer: Debian Go Packaging Team <pkg-go-maintainers@lists.alioth.debian.org>
