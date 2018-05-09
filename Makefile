PREFIX ?= /usr
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Neoneofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p neoneofetch $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@cp -p neoneofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/neoneofetch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neoneofetch.1*
