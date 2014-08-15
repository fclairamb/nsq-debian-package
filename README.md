# Download it

From here: https://github.com/fclairamb/nsq-build/releases


# Install it
    $ sudo dpkg -i dist/package/nsq_0.2.30_amd64.deb 
    Selecting previously unselected package nsq.
    (Reading database ... 337081 files and directories currently installed.)
    Preparing to unpack .../package/nsq_0.2.30_amd64.deb ...
    Unpacking nsq (0.2.30) ...
    Setting up nsq (0.2.30) ...


# Use it
    $ ls -l /usr/bin/*nsq*
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsqadmin -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsqadmin
    lrwxrwxrwx 1 root root 46 août  15 01:58 /usr/bin/nsqd -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsqd
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsqlookupd -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsqlookupd
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsq_pubsub -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_pubsub
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsq_stat -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_stat
    lrwxrwxrwx 1 root root 50 août  15 01:58 /usr/bin/nsq_tail -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_tail
    lrwxrwxrwx 1 root root 53 août  15 01:58 /usr/bin/nsq_to_file -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_to_file
    lrwxrwxrwx 1 root root 53 août  15 01:58 /usr/bin/nsq_to_http -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_to_http
    lrwxrwxrwx 1 root root 52 août  15 01:58 /usr/bin/nsq_to_nsq -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/nsq_to_nsq
    lrwxrwxrwx 1 root root 48 août  15 01:58 /usr/bin/to_nsq -> /opt/nsq/nsq-0.2.30.linux-amd64.go1.3/bin/to_nsq

Version:

    $ nsqd --version
    nsqd v0.2.30 (built w/go1.3)

Checksum:

    $ sha1sum `which nsqd`
    cd8b6ec10a9425ab7c11f199d236cbf9b7df9490  /usr/bin/nsqd
