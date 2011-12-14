
all: install-vimrc vundle commandt

install-vimrc:
	ln -sf ~/.vim/vimrc ~/.vimrc

vundle:
	mvim -c BundleInstall

commandt: vundle
	cd bundle/command-t/ruby/command-t; \
	ruby extconf.rb; \
	make




