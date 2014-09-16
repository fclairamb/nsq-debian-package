# NSQ debian package

This is debian package with the official [NSQ](https://github.com/bitly/nsq) [binaries](https://github.com/bitly/nsq/releases). Only the binaries compiled for amd64 with the latest version of go are provided.

## Download it

    $ wget https://github.com/fclairamb/nsq-debian-package/releases/download/0.2.31/nsq_0.2.31_amd64.deb


## Install it
    $ sudo dpkg -i nsq_0.2.31_amd64.deb 
    Selecting previously unselected package nsq.
    (Reading database ... 337081 files and directories currently installed.)
    Preparing to unpack .../package/nsq_0.2.31_amd64.deb ...
    Unpacking nsq (0.2.31) ...
    Setting up nsq (0.2.31) ...


## Use it
    $ ls -l /usr/bin/*nsq*
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsqadmin -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsqadmin
    lrwxrwxrwx 1 root root 46 août  15 01:58 /usr/bin/nsqd -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsqd
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsqlookupd -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsqlookupd
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsq_pubsub -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_pubsub
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsq_stat -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_stat
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsq_tail -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_tail
    lrwxrwxrwx 1 root root 53 août  15 01:58 /usr/bin/nsq_to_file -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_to_file
    lrwxrwxrwx 1 root root 53 août  15 01:58 /usr/bin/nsq_to_http -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_to_http
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsq_to_nsq -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/nsq_to_nsq
    lrwxrwxrwx 1 root root 48 août  15 01:58 /usr/bin/to_nsq -> /opt/nsq/nsq-0.2.31.linux-amd64.go1.3/bin/to_nsq

Version:

    $ nsqd --version
    nsqd v0.2.31 (built w/go1.3)

Checksum:

    $ sha1sum /usr/bin/nsqd
    77d1de95a68c0cd472644955c22c5abad77ef15c  /usr/bin/nsqd
