Docker is distributed for amd64 machines but not for i386 machines.
This is a problem if you're using Ubuntu on 32-bit servers.

The solution is this Makefile. It checks out the Docker source for
the latest release tag, then builds a pair of .debs for the local
system architecture. It also patches the Docker source so that you
can build Docker from source. (For no good reason, building Docker
normally requires that you already have Docker running.)

## How to use it:

1. Bootstrap docker. If the docker daemon is running, and the base image has been imported, then you've successfully bootstrapped docker. Otherwise, you should run `make bootstrap`. When `make bootstrap` finishes, it tells you how to install what it has built. If you're not sure where you stand, run `make all` for instructions.
2. Make sure the daemon is running by running `sudo docker version`.
3. Make sure the `ubuntu:13.10` image is available by running `sudo docker images`.
4. Run `make debs`. If you need to specify a recursive DNS server, do it like this: `make debs DNS=8.8.8.8`. You need this if your host's `/etc/resolv.conf` has no IPv4 nameserver lines other than `127.*`.
5. If you started a temporary daemon after bootstrapping, stop the daemon now.
6. Run `sudo apt-get remove "lxc-docker-*"`
7. Run `sudo dpkg -i lxc-docker*.7.6_0.7.6_i386.deb`

## Possible problems:

When upgrading to 0.8.0, I found that the new docker failed to find an IPv4 range for the `docker0` interface.
I had to create it myself, by running `sudo brctl addbr docker0` and `sudo ifconfig docker0 inet 192.168.99.1 netmask 255.255.255.0 up`.
Once I did that, it worked fine.
I'm not sure yet if this is caused by the docker source confusion of `amd64` with `linux` in build constraints, or due to my local habit of running `docker -b lxcbr0` for my system docker daemon, or something else.
