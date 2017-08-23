# Makefile to install VIM colour files.
# Owain Kenway, 2014

# This work is public domain.

installdir = $(HOME)/.vim

install: $(installdir) $(installdir)/colors/okdarkvivid.vim $(installdir)/syntax/logo.vim 

$(installdir): 
	mkdir -p $(installdir)

$(installdir)/colors/okdarkvivid.vim: okdarkvivid.vim Makefile
	cp okdarkvivid.vim  $(installdir)/colors

$(installdir)/syntax/logo.vim: syntax/logo.vim Makefile
	cp syntax/logo.vim  $(installdir)/syntax

