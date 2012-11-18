INSTALL_DIR=~/.local/bin
VIM_DIR=~/.vim

all:
	@echo "Pleas run 'make install'"

install:
	@echo "Installing..."
	cp bash_profile ~/.bash_profile
	cp screenrc ~/.screenrc
	cp vimrc ~/.vimrc
	mkdir -p $(INSTALL_DIR)
	mkdir -p $(VIM_DIR)
	cp bashmarks.sh $(INSTALL_DIR)
	cp maven_completion.bash $(INSTALL_DIR)
	cp mvn-color $(INSTALL_DIR)
	cp -r vimplugins/autoload $(VIM_DIR)
	cp -r vimplugins/bundle $(VIM_DIR)
	@echo "Done! Enjoy!"
