## Docker.io Build (Multi-Arch, Debian Official, System GO)

There are multiple 3rd party package builders out there such as [Hypriot](https://github.com/hypriot/rpi-docker-builder) & [alexellis](https://github.com/alexellis/docker-arm). Although it is true that these guys provide simplicity, they don't compete with the official debian release in terms of _Debian-ness_. Further Debian officail package builds `docker`, `containerd`, and `runc` without `docker-daemon` making situation much more simple.

### Preperations

As Docker (1.11.2) prepares to have a compatibility with open container speicification, there needs be more than one binary. Plus, Xenial (16.04) officially supports Docker 1.10.3. So let's use 1.10.3 for now.

In order to mimic the best possible docker building, few things first.

1. Read [PACKAGERS](DOCUMENT/PACKAGERS.md) first.

2. [Tianon Gravi](https://github.com/tianon) is the main maintainer in debian docker packages. His repositories contains every tools to build docker on debian. His account has following key repositories to build debian packages.
  - [Tianon Docker](https://github.com/tianon/debian-docker)
  - [Tianon runC](https://github.com/tianon/debian-runc)
  - [Tianon ContainerD](https://github.com/tianon/debian-containerd)
  
3. Go look into Launchpad dashboards for following items. As of today (06/19/2016), they only support slightly older versions for Xenial (16.04).
  - [Launchpad Docker](https://launchpad.net/ubuntu/+source/docker.io), [1.10.3](https://launchpad.net/ubuntu/+source/docker.io/1.10.3-0ubuntu6) for 16.04
  - [Launchpad Runc](https://launchpad.net/ubuntu/+source/runc), [0.0.8](https://launchpad.net/ubuntu/+source/runc/0.0.8+dfsg-2) for 16.04.
  - [Launchpad ContainerD](https://launchpad.net/ubuntu/+source/containerd),  [0.2.1](https://launchpad.net/ubuntu/+source/containerd) for _**16.10**_. 


> References

- Official Docker.io [homepage](https://dockerproject.org/), Binary [repository](https://master.dockerproject.org/).
- Official Debian docker.io [repository](http://archive.ubuntu.com/ubuntu/pool/universe/d/docker.io/)
- Official DockerHub images [repository](https://github.com/docker-library).
- Debian Docker.io repo : <https://anonscm.debian.org/cgit/docker/docker.io.git>
- Debian runC repo : <https://anonscm.debian.org/cgit/pkg-go/packages/runc.git>
- Debian containerD repo : <https://anonscm.debian.org/cgit/pkg-go/packages/containerd.git>

### How to Build `docker.io.deb v1.10.3` package With GccGo6 (01/30/2017)

You must read [`PACKAGER.md`](DOCUMENT/PACKAGERS.md) and then have prepped all the requirements, it's time to build it.

1. Download [docker.io_1.10.3.orig.tar.gz](https://launchpad.net/ubuntu/+archive/primary/+files/docker.io_1.10.3.orig.tar.gz) and unarchive it.
2. Download the debian packager package [docker.io_1.10.3-0ubuntu6.debian.tar.xz](https://launchpad.net/ubuntu/+archive/primary/+files/docker.io_1.10.3-0ubuntu6.debian.tar.xz), and unachive it into `docker-1.10.3/debian`

  ```sh
  tar -xvf docker.io_1.10.3-0ubuntu6.debian.tar.xz -C ./docker-1.10.3/debian
  ```
  * Make sure the original archive is placed at the parent directory and don't delete original archives!
  * Debian package builder will overwrite  `docker.io_1.10.3-0ubuntu6.debian.tar.xz`! Watchout for backup
3. Make sure you installed all the required packages. **DO NOT USE `golang-go`** as we've substitude with `gccgo6`.
  
  ```sh  
  # Hold off installing golang-go if you have your own golang binary, or gccgo
  apt-mark hold golang-go

  apt install autotools-dev bash-completion bsdmainutils btrfs-tools debhelper dh-strip-nondeterminism dh-systemd gccgo gccgo-6 libgo9 gettext gettext-base git groff-base intltool-debian javascript-common libapparmor-dev libarchive-zip-perl libasprintf-dev libasprintf0v5 libcroco3 libdevmapper-dev libdevmapper-event1.02.1 libfile-stripnondeterminism-perl libgettextpo-dev libgettextpo0 libjs-excanvas liblzo2-2 libmail-sendmail-perl libpcre16-3 libpcre3-dev libpcre32-3 libpcrecpp0v5 libpipeline1 libselinux1-dev libsepol1-dev libsqlite0 libsys-hostname-long-perl libtimedate-perl libudev-dev libunistring0 man-db mercurial mercurial-common po-debconf sqlite sqlite3 go-md2man dh-golang
  ```  
4. Set build environemnt as described in [PACKAGERS](DOCUMENT/PACKAGERS.md)

  ```sh
  export TMPDIR=/mnt/TEMP # set tmp to HDD so SD card would not wear out
  export AUTO_GOPATH=1    # set corrent directory as the source directory
  export DOCKER_BUILDTAGS='apparmor' # specify apparmor
  ```
5. Build & generate source and binary packages at the docker directory.

  ```sh
  cd docker-1.10.3  
  dpkg-buildpackage -F 
  ```
6. The resultant `.deb` files at the parent directory.

> References

- <https://github.com/docker/docker/issues/23018>
- <http://stackoverflow.com/questions/25811445/what-are-the-primary-differences-between-gc-and-gccgo>
- <https://golang.org/doc/go1.7#gccgo>
  
  > Gccgo : Due to the alignment of Go's semiannual release schedule with GCC's annual release schedule, GCC release 6 contains the Go 1.6.1 version of gccgo. The next release, GCC 7, will likely have the Go 1.8 version of gccgo.

### How to build (06/21/2016)

Once you've prepped all the requirements from `PACKAGER.md`, it's time to build it.

1. Install the right golang version in your system with ENVIRONMENT setup properly.
  - Use Go `1.6.2` for Docker `1.10.3`.
2. As for Docker `v1.10.3`, download [docker.io_1.10.3.orig.tar.gz](https://launchpad.net/ubuntu/+archive/primary/+files/docker.io_1.10.3.orig.tar.gz).
3. Unarchive it and make sure the original archive is placed at the parent directory (i.e. don't delete it!).
4. Download the debian packager [docker.io_1.10.3-0ubuntu6.debian.tar.xz](https://launchpad.net/ubuntu/+archive/primary/+files/docker.io_1.10.3-0ubuntu6.debian.tar.xz), and unarchive it into `docker-1.10.3/debian` 

  ```sh
  tar -xvf docker.io_1.10.3-0ubuntu6.debian.tar.xz -C ./docker-1.10.3/debian
  ```
4. Make sure you installed all the required packages. (One way to do it is just run step #5.) We'll skip golang-go as we've installed a custom version of golang.
  
  ```sh
  apt-get install btrfs-tools dh-systemd go-md2man gccgo dh-golang libapparmor-dev libdevmapper-dev
  ```
  
5. `dpkg-buildpackage -F` to generate source and binary packages at the docker directory.
  
  ```sh
  cd docker-1.10.3
  
  # set directory to HDD so SD card would not wear out
  TMPDIR=<path> dpkg-buildpackage -F 
  ```

6. The resultant `.deb` files at the parent directory.

> References

- <https://github.com/docker/docker/issues/23018>
- <http://stackoverflow.com/questions/25811445/what-are-the-primary-differences-between-gc-and-gccgo>

## Docker Build (ARM, Hypriot, Docker-In-Docker)

1. Prepare.

  ```sh
  git clone https://github.com/docker/docker.git
  cd docker
  ```

2. Build Environment

  ```sh
  make build
  
  $ docker images
  REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
docker-dev          master              2ac07dec8c9a        14 minutes ago      931.9 MB
  ```

3. Testing

  ```sh
  # unit-test
  make test-unit
  
  # integration-test 
  make test-integration-cli
  
  # all tests
  make test
  ```

4. Building a new Docker binary

  ```sh
  $ make binary  
  Created binary: bundles/1.11.0-dev/binary/docker-1.11.0-dev
  ```
  ```sh
  $ bundles/1.11.0-dev/binary/docker-1.11.0-dev version
Client:
 Version:      1.11.0-dev
 API version:  1.23
 Go version:   go1.4.3
 Git commit:   18204ea
 Built:        Fri Feb  5 00:48:09 2016
 OS/Arch:      linux/arm

  ```

5. Building a Docker Debian package

  ```sh
  $ make deb
  ...
  $ ls -la bundles/latest/build-deb/debian-jessie
  ```

> Reference

- <http://blog.hypriot.com/post/test-build-and-package-docker-for-arm-the-official-way/>

## Official Docker install (x86, Docker-In-Docker)

1. Remove old distributions  

  ```sh
  apt-get purge lxc-docker*
  apt-get purge docker.io*
  ```

2. Install extra kernel images for Xenial  
  > For Ubuntu Trusty, Wily, and Xenial, it’s recommended to install the linux-image-extra kernel package. The linux-image-extra package allows you use the aufs storage driver.  
  
  ```sh
  apt-get install linux-image-extra-$(uname -r)
  ```

3. Update packages install certificates
  
  ```sh
  apt-get update && apt-get install -y apt-transport-https ca-certificates
  ```
  
4. Add GPG key

  ```sh
  apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  ```
  
5. Add `docker.list`

  ```sh
  deb https://apt.dockerproject.org/repo debian-xenial main
  ```

6. Update & verify policy && install 

  ```sh
  apt-get update && apt-cache policy docker-engine && apt-get install docker-engine
  ```

> Reference  

- <https://docs.docker.com/engine/installation/linux/debian/>

> Note

- lxc-docker, docker.io are old dist-packages.