PREFIX = /usr
POD2MAN=pod2man --date " " --center "" -r ""

all: dnsvi.1

dnsvi.1: dnsvi
	$(POD2MAN) --quotes=none --section 1 $< $@

install:
	install -D dnsvi $(DESTDIR)$(PREFIX)/bin/dnsvi
	install -D -m644 dnsvi.1 $(DESTDIR)$(PREFIX)/share/man/man1/dnsvi.1

clean:
	rm -f dnsvi.1
