# NSQ debian package

This is debian package with the official [NSQ](https://github.com/bitly/nsq) [binaries](https://github.com/bitly/nsq/releases). Only the binaries compiled for amd64 with the latest version of go are provided.

## Download it

    $ wget https://github.com/fclairamb/nsq-build/releases/download/0.3.0/nsq_0.3.0_amd64.deb


## Install it

    $ sudo dpkg -i nsq_0.3.0_amd64.deb
    (Reading database ... 333137 files and directories currently installed.)
    Preparing to unpack nsq_0.3.0_amd64.deb ...
    Unpacking nsq (0.3.0) over (0.2.31) ...
    Setting up nsq (0.3.0) ...


## Use it

    $ ls -l /usr/bin/*nsq*
    lrwxrwxrwx 1 root root  51 nov.  23 19:56 /usr/bin/nsqadmin -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsqadmin
    lrwxrwxrwx 1 root root  47 nov.  23 19:56 /usr/bin/nsqd -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsqd
    lrwxrwxrwx 1 root root  53 nov.  23 19:56 /usr/bin/nsqlookupd -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsqlookupd
    lrwxrwxrwx 1 root root  53 nov.  23 19:56 /usr/bin/nsq_pubsub -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_pubsub
    lrwxrwxrwx 1 root root  51 nov.  23 19:56 /usr/bin/nsq_stat -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_stat
    lrwxrwxrwx 1 root root  51 nov.  23 19:56 /usr/bin/nsq_tail -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_tail
    lrwxrwxrwx 1 root root  54 nov.  23 19:56 /usr/bin/nsq_to_file -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_to_file
    lrwxrwxrwx 1 root root  54 nov.  23 19:56 /usr/bin/nsq_to_http -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_to_http
    lrwxrwxrwx 1 root root  53 nov.  23 19:56 /usr/bin/nsq_to_nsq -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/nsq_to_nsq
    lrwxrwxrwx 1 root root  49 nov.  23 19:56 /usr/bin/to_nsq -> /opt/nsq/nsq-0.3.0.linux-amd64.go1.3.3/bin/to_nsq


Version:

    $ nsqd --version
    nsqd v0.3.0 (built w/go1.3.3)

Checksum:

    $ sha1sum /usr/bin/nsqd
    71af0356611d189e5f1fbe27418b654bcc5f31a3  /usr/bin/nsqadmin
    1bc244cae81eb07f005804e458766f2c79fa214d  /usr/bin/nsqd
    e1e3193b8f2926c0a3c4de8fdc5c3038e79ecbd9  /usr/bin/nsqlookupd
    f846574f462977f625ffb16fbee007b5e9e47297  /usr/bin/nsq_pubsub
    63b403aeb9fbbe47d977bc4b35915a87632fefb3  /usr/bin/nsq_stat
    8a90026be16530f21792958d0c1def3c134e66d3  /usr/bin/nsq_tail
    deee92e1894ba3ecef0a224d8ad0468c55e68664  /usr/bin/nsq_to_file
    bd61e6da57012f89950e309860f2a3791879b9b8  /usr/bin/nsq_to_http
    c922d2050b8b3217ab05a2d790c724dd66891eeb  /usr/bin/nsq_to_nsq
    938aae748853b50ef69204f5982957cbc71f3964  /usr/bin/to_nsq
