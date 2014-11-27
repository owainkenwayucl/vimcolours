# Makefile to install VIM colour files.
# Owain Kenway, 2014

# This work is public domain.

installdir = $(HOME)/.vim/colors

install: $(installdir) $(installdir)/okdarkvivid.vim

$(installdir): 
	mkdir -p $(installdir)

$(installdir)/okdarkvivid.vim: okdarkvivid.vim
	cp okdarkvivid.vim  $(installdir)
