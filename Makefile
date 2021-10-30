PREFIX=${HOME}/local
CURRENTDIR=$(shell pwd -L | perl -p -e 's/ /\\ /g')

all:
	@echo "make [install|uninstall]"


install:
	mkdir -p $(PREFIX)/bin/ $(PREFIX)/share/man/man1/
	cp -af $(CURRENTDIR)/parasoul $(PREFIX)/bin/
	cp -af $(CURRENTDIR)/parasoul.1 $(PREFIX)/share/man/man1/

uninstall:
	rm -f $(PREFIX)/bin/parasoul
	rm -f  $(PREFIX)/share/man/man1/parasoul.1

