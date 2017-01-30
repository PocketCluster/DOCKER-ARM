# Path to the directory containing this Makefile, including a trailing '/'.
srcdir = $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY:	all bootstrap clean debs default mostlyclean spotless

default: all

# If you're building bootstrap, and the nameservers in /etc/resolv.conf
# all point to localhost, then you probably need to set this.
# Example: make stage2 DNS=8.8.8.8
DNS=

# How to become root. Docker must be built by root.
# Set this to the empty string if you're running this Makefile as root.
SUDO=sudo

# The architecture to build for (i.e. i386)
ARCH=$(shell dpkg-architecture -qDEB_HOST_ARCH)

# Delete nonessential files. Also delete build products.
spotless:	clean
	-rm -f *.deb docker baseimage.tar.xz

# Delete intermediate files and downloaded files, but not build products.
clean:	mostlyclean
	-rm -f stamp-sourcecloned
	-rm -fr dockersource

# Delete intermediate files, but not downloaded files or build products.
mostlyclean:
	-rm -f tmp-* stamp-dirs stamp-sourcepatched

DOCKER_GIT_ORIGIN=http://git@github.com/dotcloud/docker

# Clone the docker source code repo (but don't check anything out).
stamp-sourcecloned:
	if [ -d dockersource ]; then \
	  if [ "$$(cd dockersource && git config remote.origin.url)" != "${DOCKER_GIT_ORIGIN}" ]; then \
	    : Whatever happened here, the git repo is unusable.; \
	    rm -fr dockersource; \
	  fi; \
	fi
	[ -d dockersource ] || git clone --no-checkout "${DOCKER_GIT_ORIGIN}" dockersource
	touch stamp-sourcecloned

# Find out the latest released version, and check out its release tag, then patch it.
stamp-sourcepatched:	stamp-sourcecloned
	(cd dockersource && git ls-remote --tags --exit-code) > tmp-tags
	egrep '^[0-9a-f]+[[:space:]]+refs/tags/v[[:digit:]]+(\.[[:digit:]]+)*$$' tmp-tags | \
	  cut -d v -f2 | sort -t. -k 3n | sort -t. -k 2n | sort -t. -k 1n | tail -1 > tmp-latest
	v=$$(cat tmp-latest); cd dockersource && git fetch origin tag v$$v
	v=$$(cat tmp-latest); cd dockersource && git reset --hard tags/v$$v && git clean -d -f
	cd dockersource && patch -p1 < ../docker.patch
	touch stamp-sourcepatched

bootstrap:	stamp-sourcepatched
	cd dockersource && ${SUDO} env DNS=${DNS} make bootstrap
	cp dockersource/bundles/$$(cat dockersource/VERSION)/bootstrap/baseimage.tar.xz .
	cp dockersource/bundles/$$(cat dockersource/VERSION)/bootstrap/docker .
	ls -lh baseimage.tar.xz docker

debs:	stamp-sourcepatched
	cd dockersource && ${SUDO} make debs
	cp dockersource/bundles/$$(cat dockersource/VERSION)/ubuntu/*.deb .
	v=$$(cat tmp-latest); ls -lh lxc-docker_$${v}*_${ARCH}.deb lxc-docker-$${v}_$${v}*_${ARCH}.deb

BASE_IMAGE_NAME=ubuntu:13.10

# Clues for the clueless.
all:
	if docker help >/dev/null 2>&1 && ${SUDO} docker version >/dev/null; then \
	  if ${SUDO} docker inspect ${BASE_IMAGE_NAME} >/dev/null; then \
	    printf 'It looks like docker is ready -- use "make debs" to rebuild debs.\n'; \
	  else \
	    printf 'It looks like docker is running but is missing the ${BASE_IMAGE_NAME} image.\n'; \
	    if [ -f baseimage.tar.xz ]; then \
	      printf 'Try this: %s docker import - < %s\n' "${SUDO}" baseimage.tar.xz; \
	    else \
	      printf 'Build it with "make bootstrap".\n'; \
	    fi; \
	  fi; \
	elif docker help >/dev/null 2>&1; then \
	  printf 'You have a docker binary but the daemon is not running.\n'; \
	  printf 'Try this: %s docker -d %s&\n' "${SUDO}" "$(if ${DNS}, -dns ${DNS})"; \
	else \
	  printf 'You have no docker. Try "make bootstrap".\n'; \
	fi
