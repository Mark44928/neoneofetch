PREFIX = /usr

all:
	@echo Run \'make install\' to install Neoneofetch

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	mkdir -p $(DESTDIR)/etc/neoneofetch
	mkdir -p $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro
	cp -p neoneofetch $(DESTDIR)$(PREFIX)/bin/neoneofetch
	cp -p neoneofetch.1 $(DESTDIR)$(PREFIX)/share/man/man1/neoneofetch.1
	cp -p config/config $(DESTDIR)/etc/neoneofetch/config
	cp -p ascii/distro/* $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/neoneofetch
	rm -f $(DESTDIR)$(PREFIX)/share/man/man1/neoneofetch.1
	rm -f -r $(DESTDIR)$(PREFIX)/share/neoneofetch
	rm -f -r $(DESTDIR)/etc/neoneofetch
