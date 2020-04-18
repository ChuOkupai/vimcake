RC		:= ~/.vimrc
PLUGGED	:= ~/.vim/plugged
UMAIL	?= $(USER)
DOMAIN	?= student.42.fr
VERSION := $(shell tail -3 README.md | grep version | cut -d ' ' -f 4)

all:
	@echo 'Type make install to install VimCake.'
	@echo 'If you want to keep your current vim config, save your files first!'
	@echo 'VimCake can be reinstalled with make re.'
	@echo 'make clean remove the package.'

install:
	mkdir -p ~/.cache/vim ~/.vim
	echo '"VimCake version: $(VERSION)\n' > $(RC)
	cat src/plugins-list.vim >> $(RC)
	cp -r src/autoload ~/.vim
	vim -c 'PlugUpgrade | PlugInstall | qa'
	cat src/vimrc.vim >> $(RC)
	cp -r src/vim-* $(PLUGGED)
	patch -i src/monokai.diff $(PLUGGED)/vim-monokai/colors/monokai.vim
	sed -i -e 's/#H42USER/$(USER)/' $(RC)
	sed -i -e 's/#H42MAIL/$(UMAIL)@$(DOMAIN)/' $(RC)
	@echo 'VimCake v$(VERSION) package installed.'

clean:
	rm -rf ~/.cache/vim ~/.vim $(RC)*
	@echo 'VimCake package removed.'

re: clean install
