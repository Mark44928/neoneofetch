PREFIX = /usr
MANDIR = $(PREFIX)/share/man
DESTDIR =

# Auto-detect Termux (only if PREFIX was not explicitly set)
ifeq ($(origin PREFIX),default)
    ifneq ($(wildcard /data/data/com.termux),)
        PREFIX = /data/data/com.termux/files/usr
    endif
endif

all:
	@echo Run \'make install\' to install Neoneofetch.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p neoneofetch $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@cp -p neoneofetch.1 $(DESTDIR)$(MANDIR)/man1
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/neoneofetch
ifneq ($(wildcard /data/data/com.termux/files/usr/bin/bash),)
	# Already correct for Termux
else
	@sed -i.bak '1s|^#!/data/data/com.termux/files/usr/bin/bash$$|#!/usr/bin/env bash|' $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@rm -f $(DESTDIR)$(PREFIX)/bin/neoneofetch.bak
endif

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/neoneofetch
	@rm -f $(DESTDIR)$(MANDIR)/man1/neoneofetch.1
