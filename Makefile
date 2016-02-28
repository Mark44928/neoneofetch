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
	$(INSTALL_PROG) neoneofetch $(DESTDIR)$(PREFIX)/bin/neoneofetch
	$(INSTALL_PROG) config/config $(DESTDIR)$(PREFIX)/share/neoneofetch/config
	$(INSTALL_PROG) ascii/distro/* $(DESTDIR)$(PREFIX)/share/neoneofetch/ascii/distro

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/neoneofetch
	$(RM) -r $(DESTDIR)$(PREFIX)/share/neoneofetch


