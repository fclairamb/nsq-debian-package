VERSION=0.2.30
GO_VERSION=1.3

BASE=nsq-$(VERSION).linux-amd64.go$(GO_VERSION)
FILE=/tmp/$(BASE).tar.gz
URL=https://s3.amazonaws.com/bitly-downloads/nsq/$(BASE).tar.gz

ifeq "$(DESTDIR)" ""
	DESTDIR=target
endif

TARGETDIR=$(DESTDIR)/opt/nsq/$(BASE)/

all:
	@echo make package to create a package

clean:
	rm -Rf dist

$(FILE):
	wget $(URL) -c -O $(FILE).tmp && mv $(FILE).tmp $(FILE)

install: $(FILE)
	mkdir -p $(DESTDIR)/opt/nsq/ $(DESTDIR)/usr/bin/
	tar -zxvf $(FILE) -C $(DESTDIR)/opt/nsq/
	ln -s $(DESTDIR)/opt/nsq/$(BASE)/bin/* $(DESTDIR)/usr/bin/

package:
	dpkg-buildpackage -b -us -uc
	mkdir -p dist/package
	mv ../*.deb dist/package/
	rm ../*.changes

test-package:
	make clean
	make package && sudo dpkg -i dist/package/*
