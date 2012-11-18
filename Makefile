INSTALL_DIR=~/.local/bin

all:
	@echo "Pleas run 'make install'"

install:
	@echo "Installing..."
	cp bash_profile ~/.bash_profile
	cp screenrc ~/.screenrc
	mkdir -p $(INSTALL_DIR)
	cp bashmarks.sh $(INSTALL_DIR)
	cp maven_completion.bash $(INSTALL_DIR)
	cp mvn-color $(INSTALL_DIR)
	@echo "Done! Enjoy!"
