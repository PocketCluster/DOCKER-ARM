-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

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
 40d5c823906b7f361908886e3776bc74c3549dc5 51656 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Checksums-Sha256:
 6b72fafa4c068a95133f5c9fda9fb148c9412db7a932800689e259a1b1c7ef6d 9973680 docker.io_1.10.3.orig.tar.gz
 44dace8ec2883f8e53b4361b8e017bce0f63cf1caca94dbc953b3eb035f7108a 51656 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Files:
 34da67232c13c0bcc1bba8980151174d 9973680 docker.io_1.10.3.orig.tar.gz
 c9ecfdd27fed68f94925edbe79f6fa14 51656 docker.io_1.10.3-0ubuntu6.debian.tar.xz
Original-Maintainer: Paul Tagliamonte <paultag@debian.org>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGBcyAAoJEBHfQpTMo5iTgb0P/0HR5RPRH/E2VDmQtAI4AJXF
dI1FJZq4JDz4/Aj7bLIQcDdA7U52DRdxQTs065f0yu9xjxvqingUasaGGRp5uGp+
bsgbaPA1338VaATsPb62QhhQxCGwlISo6YE3dNPY03R9upljs/u0FdgO/xVaB4Hl
I6SmoO9qCl1VzdT9g7mFkDPxwmxX5t1EDg6t4/P3uHUhnp2BuXeXhJzOYiDonLut
hUgfXpjSHlqx2lXY1Qyft5QNHGzciFMA7qe0+IvrgbEjzP38Z03Q38dCZuomLP9i
1G0lN9nalNfQCWuFxsAMyoFiaj2Kt78eg+rUmRc8w093WaAgaFy3GJef3Ijdj43Q
dRGZ5rXMorCkcb4cvxw5ys7WnWDS2PYsBPWbrTQCGcxUnyDJnQsxJskFOhU11NMT
1ffkFersvr9lgDdxd8YPJOXDZM99LGGqr8uilmOqrXyC7zPa0qS08/NLl8zUtPdj
HF+vKvjMvMuPMj2Y+G8Y9MXwygAnMtN/m7jTCm0jDnbF6ThWEaRqXoT3yC9UWJbW
10DtHVvw4jR3X17JS8lTMAvHzfl2Tni6Q/IktIPRRz/6STGmw7f8/YbjsbBnVTea
+IllrUe+nrfYp0QtUz7qfNwexEreEXiV+JnOkUonEPkHKLBCzrbDgxpDCvgnQKgJ
SixkJH/6JmzJA+BOSC2v
=7eYo
-----END PGP SIGNATURE-----
