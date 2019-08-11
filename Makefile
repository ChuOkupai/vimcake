PLUGGED := ~/.vim/plugged

all:
	@echo 'Type make install to install vimcake.'
	@echo 'If you want to keep your current vim config, save your files first!'
	@echo 'vimcake can be reinstalled with make re.'
	@echo 'make clean remove the package.'

install:
	mkdir -p ~/.cache/vim ~/.vim
	cp src/plugins-list.vim ~/.vimrc
	cp -r src/autoload ~/.vim
	vim -c 'PlugUpgrade | PlugInstall | qa'
	cat src/*.vim > ~/.vimrc
	cp -r src/vim-* $(PLUGGED)
	patch $(PLUGGED)/vim-42header/after/plugin/42header.vim src/42header.diff
	patch $(PLUGGED)/vim-monokai/colors/monokai.vim src/monokai.diff
	@echo 'vimcake package installed.'

clean:
	rm -rf ~/.cache/vim ~/.vim ~/.vimrc
	@echo 'vimcake package removed.'

re: clean install
