# NSQ debian package

This is debian package with the official [NSQ](https://github.com/bitly/nsq) [binaries](https://github.com/bitly/nsq/releases). Only the binaries compiled for amd64 with the latest version of go are provided.

## Download it

    $ wget https://github.com/fclairamb/nsq-debian-package/releases/download/0.3.5/nsq_0.3.5_amd64.deb


## Install it

    $ sudo dpkg -i nsq_0.3.5_amd64.deb 
    (Reading database ... 33401 files and directories currently installed.)
    Preparing to unpack nsq_0.3.5_amd64.deb ...
    Unpacking nsq (0.3.5) over (0.3.2) ...
    Setting up nsq (0.3.5) ...

## APT alternative

You can also add my APT server to make future upgrades easier:

    SUDO=$(which sudo) # We might not have a sudo
    wget -qO - http://apt.webingenia.com/key.gpg | $SUDO apt-key add - # We add the key
    echo "deb http://apt.webingenia.com/ unstable/" | $SUDO tee /etc/apt/sources.list.d/webingenia.list # And the repository
    $SUDO apt-get update # And we update our repositories
    $SUDO apt-get install nsq -y

## Use it

    $ ls -l /usr/bin/*nsq*
    lrwxrwxrwx 1 root root   51 avril 27 21:47 /usr/bin/nsqadmin -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsqadmin
    lrwxrwxrwx 1 root root   47 avril 27 21:47 /usr/bin/nsqd -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsqd
    lrwxrwxrwx 1 root root   53 avril 27 21:47 /usr/bin/nsqlookupd -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsqlookupd
    lrwxrwxrwx 1 root root   53 avril 27 21:47 /usr/bin/nsq_pubsub -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_pubsub
    lrwxrwxrwx 1 root root   51 avril 27 21:47 /usr/bin/nsq_stat -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_stat
    lrwxrwxrwx 1 root root   51 avril 27 21:47 /usr/bin/nsq_tail -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_tail
    lrwxrwxrwx 1 root root   54 avril 27 21:47 /usr/bin/nsq_to_file -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_to_file
    lrwxrwxrwx 1 root root   54 avril 27 21:47 /usr/bin/nsq_to_http -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_to_http
    lrwxrwxrwx 1 root root   53 avril 27 21:47 /usr/bin/nsq_to_nsq -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/nsq_to_nsq
    lrwxrwxrwx 1 root root   49 avril 27 21:47 /usr/bin/to_nsq -> /opt/nsq/nsq-0.3.5.linux-amd64.go1.4.2/bin/to_nsq
    -rwxr-xr-x 1 root root 6224 déc.  12  2012 /usr/bin/unsq


Version:

    $ nsqd --version
    nsqd v0.3.5 (built w/go1.4.2)

Checksum:

    $ sha1sum /usr/bin/*nsq*
    53278446acfd00b47a25d1e7d7f86cb29b875388  /usr/bin/nsqadmin
    f202af76cebe1bb4308347f1fb19b7f000104a53  /usr/bin/nsqd
    28bc542e2e903ec4821830adc6d476608970c09c  /usr/bin/nsqlookupd
    5885500353e93c4d45bd6c9194cbb0c21bbc4f44  /usr/bin/nsq_pubsub
    a7586ba1e527748b3689673fbb5b89d817b84c98  /usr/bin/nsq_stat
    cbf42f6e0c330a3b00607badefec99470ba538c1  /usr/bin/nsq_tail
    1cc05915d10ef10b4f9d01d7c9a5326835134e46  /usr/bin/nsq_to_file
    18329ecfe768202bdda1c8722442c933ae5c59ef  /usr/bin/nsq_to_http
    143ef64851c7d207d3bb13b187224db7a231a578  /usr/bin/nsq_to_nsq
    b1cde6671e7e27d18520931d2219f83ceef313c8  /usr/bin/to_nsq

