all:
	@echo "Type make install to install vimcake."
	@echo "If you want to preserve your current vim config, backup your files first!"
	@echo "vimcake can be updated with make update or reinstalled with make re."
	@echo "make clean remove the package."

copy:
	mkdir -p ~/.cache/vim ~/.vim
	cp src/.vimrc.install ~/.vimrc
	cp -r src/autoload ~/.vim
	vim -c 'PlugUpgrade | PlugInstall | qa'
	cp src/.vimrc ~
	cp -r src/plugged ~/.vim

reload:
	cp src/.vimrc ~
	cp -r src/plugged ~/.vim
	
install: copy reload
	@echo "vimcake package installed."

update: reload
	@echo "vimcake package updated."

clean:
	rm -rf ~/.cache/vim ~/.vim ~/.vimrc
	@echo "vimcake package removed."

re: clean install
