PREFIX ?= /usr
SYSCONFDIR ?= /etc
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install Neoneofetch.

install:
	@echo 'Making directories...'
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@mkdir -p $(DESTDIR)$(SYSCONFDIR)/neoneofetch

	@echo 'Installing binaries...'
	@sed "s|ASCIIDIR|$(PREFIX)/share/neoneofetch/ascii/distro|g;s|CONFDIR|$(SYSCONFDIR)/neoneofetch|g" < neoneofetch > $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/neoneofetch

	@echo 'Installing ASCII files, man page and config file...'
	@cp -p ascii/distro/* $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro
	@cp -p neoneofetch.1 $(DESTDIR)$(MANDIR)/man1
	@cp -p config/config.conf $(DESTDIR)$(SYSCONFDIR)/neoneofetch/config.conf

uninstall:
	@echo 'Removing files...'
	@rm -rf $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@rm -rf $(DESTDIR)$(MANDIR)/man1/neoneofetch.1*
	@rm -rf $(DESTDIR)$(PREFIX)/share/neoneofetch
	@rm -rf $(DESTDIR)$(SYSCONFDIR)/neoneofetch
