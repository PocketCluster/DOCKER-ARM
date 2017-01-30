Format: 3.0 (quilt)
Source: containerd
Binary: containerd, golang-github-docker-containerd-dev
Architecture: linux-any all
Version: 0.2.1-0ubuntu3
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Uploaders: Tianon Gravi <tianon@debian.org>
Homepage: https://containerd.tools
Standards-Version: 3.9.7
Vcs-Browser: https://anonscm.debian.org/cgit/pkg-go/packages/containerd.git
Vcs-Git: https://anonscm.debian.org/git/pkg-go/packages/containerd.git
Build-Depends: debhelper (>= 9), dh-golang, golang-go (>= 2:1.6~) | golang-1.6-go
Package-List:
 containerd deb admin optional arch=linux-any
 golang-github-docker-containerd-dev deb admin optional arch=all
Checksums-Sha1:
 5ced63d027a506c39c7e57e9e942b36c6eb39d53 635877 containerd_0.2.1.orig.tar.gz
 9c75a67f0e9bd018668a49d8a45138a83f0b3073 9812 containerd_0.2.1-0ubuntu3.debian.tar.xz
Checksums-Sha256:
 f9dfeaba17064f279a7dfe89f0ef6763ee45b0a57c03aa423da2af340fba198d 635877 containerd_0.2.1.orig.tar.gz
 74729f2f2fcf7de10d397d240f5c14767060ff8af72503f05dc5a544af51246b 9812 containerd_0.2.1-0ubuntu3.debian.tar.xz
Files:
 dfd6e08dd02d52826878fca67bc000e4 635877 containerd_0.2.1.orig.tar.gz
 4a62023011e308444c22ddd33c796ddd 9812 containerd_0.2.1-0ubuntu3.debian.tar.xz
Go-Import-Path: github.com/docker/containerd
Original-Maintainer: Debian Go Packaging Team <pkg-go-maintainers@lists.alioth.debian.org>
