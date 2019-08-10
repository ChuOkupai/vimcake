all:
	@echo 'Type make install to install vimcake.'
	@echo 'If you want to keep your current vim config, save your files first!'
	@echo 'vimcake can be reinstalled with make re.'
	@echo 'make clean remove the package.'

install:
	mkdir -p ~/.cache/vim ~/.vim
	cp src/install.vim ~/.vimrc
	cp -r src/autoload ~/.vim
	vim -c 'PlugUpgrade | PlugInstall | qa'
	sed -i '' '161d' ~/.vim/plugged/vim-42header/after/plugin/42header.vim 
	cat src/*.vim > ~/.vimrc
	cp -r src/plugged ~/.vim
	@echo 'vimcake package installed.'

clean:
	rm -rf ~/.cache/vim ~/.vim ~/.vimrc
	@echo 'vimcake package removed.'

re: clean install
