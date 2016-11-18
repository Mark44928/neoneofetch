PREFIX        ?=  /usr
RM            ?=  rm -f
INSTALL_DIR   ?=  install -m755 -d
INSTALL_PROG  ?=  install -m755
INSTALL_FILE  ?=  install -m644

all:
	@echo Run \'make install\' to install Neoneofetch

install:
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/bin
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro
	$(INSTALL_DIR) $(DESTDIR)$(PREFIX)/share/man/man1
	$(INSTALL_PROG) neoneofetch $(DESTDIR)$(PREFIX)/bin/neoneofetch
	$(INSTALL_FILE) neoneofetch.1 $(DESTDIR)$(PREFIX)/share/man/man1/neoneofetch.1
	$(INSTALL_PROG) config/config $(DESTDIR)$(PREFIX)/share/neoneofetch/config
	$(INSTALL_FILE) ascii/distro/* $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/neoneofetch
	$(RM) $(DESTDIR)$(PREFIX)/share/man/man1/neoneofetch.1
	$(RM) -r $(DESTDIR)$(PREFIX)/share/neoneofetch


