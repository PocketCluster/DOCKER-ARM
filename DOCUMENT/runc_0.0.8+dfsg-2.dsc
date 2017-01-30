-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: runc
Binary: runc, golang-github-opencontainers-runc-dev
Architecture: any all
Version: 0.0.8+dfsg-2
Maintainer: Debian Go Packaging Team <pkg-go-maintainers@lists.alioth.debian.org>
Uploaders: Alexandre Viau <alexandre@alexandreviau.net>, Dmitry Smirnov <onlyjob@debian.org>
Homepage: https://github.com/opencontainers/runc
Standards-Version: 3.9.7
Vcs-Browser: https://anonscm.debian.org/cgit/pkg-go/packages/runc.git
Vcs-Git: https://anonscm.debian.org/pkg-go/packages/runc.git
Build-Depends: debhelper (>= 9), dh-golang, help2man, golang-codegangsta-cli-dev, golang-dbus-dev, golang-docker-dev, golang-github-coreos-go-systemd-dev, golang-github-docker-go-units-dev, golang-github-opencontainers-specs-dev, golang-github-seccomp-libseccomp-golang-dev, golang-github-vishvananda-netlink-dev, golang-go, golang-gocapability-dev | golang-github-syndtr-gocapability-dev, golang-goprotobuf-dev, golang-logrus-dev, protobuf-compiler
Package-List:
 golang-github-opencontainers-runc-dev deb devel extra arch=all
 runc deb devel extra arch=any
Checksums-Sha1:
 12f4e585612a458b7c58989c65f25e1f4b403e82 150248 runc_0.0.8+dfsg.orig.tar.xz
 19d6d9a4a51a022d3900e743aa776bd70998194e 4440 runc_0.0.8+dfsg-2.debian.tar.xz
Checksums-Sha256:
 72fb9acdcbfced5d7710769ae27bd10ab114cd4ffed8a1451991db3fff15fb85 150248 runc_0.0.8+dfsg.orig.tar.xz
 5f3ca1b1e2d572b672895786cda2335a8951d0bda3b9e70b1c6b78e6d7a1bc19 4440 runc_0.0.8+dfsg-2.debian.tar.xz
Files:
 96b333d994848bb1f3221711c495a956 150248 runc_0.0.8+dfsg.orig.tar.xz
 365ee95a20438308a84a921d7ed5d86f 4440 runc_0.0.8+dfsg-2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW8lz9AAoJEFK2u9lTlo0bDqQQAINWcNsVtV+yK/qkn10jJrWG
cxdoMXai2fBk4+moJrzRoX6QIhsMljlbVBgIOdK/yYjOZjDYcKAp9fgHgyepGkxI
mlg0HOEAfB+wPsZb8i32SD5eBs7hCrvX1pZdVNFagy2rl68UAXZpPchy7SuLB19a
6jQLJu1Z3xgQN+PdaxQI8QCG4F2VnY2OL5aYBBJA2OYuc0aSYMsfZDGsjT2W1zPS
xJyH/hA8215UR6Ne4XMMppCa1z8S1XnXWmBMWa8tbPrY+tD0sWexSNY8M6DLNxER
Sc6vsiFsPL2JAXymJ0cXTi//Fjr0J1XuNG0o1B4tAF1nai88EHohdm37yHqcXep9
FbKlMlr6hz37Cch/zrM6fB3B7pwvA1X4QqinRfC4TiMfkVNjtKpYhECgWT8Kqz6T
zbwkRwra1qQE3JyVarrupbBMRJbvU1Sbkodu3HvxRY0pksZsbU1xubxoV7WIrI4o
mVJb344EYRK4sloboavGJF/gPj3dOhW0+Ff+0xauumOzZG03GsNTdSCOhMfZR8+K
vusGu6S2qx/nJiC5aG+hr3+Gn6kuooG4KaYHgemtTkVz7EaDJ4Ok6YJbvRxR2Bnw
umqk1DpokVSLetDR0VSBlRIhEcfgzbDgVRGHjmqDYsROK9spoR4HioDKq3BmY58D
wv77DAYbPlMZucY65oht
=lPbW
-----END PGP SIGNATURE-----
