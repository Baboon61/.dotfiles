all: pull source update

source:
	cp ~/.dotfiles/.aliases ~/.aliases
	cp ~/.dotfiles/.zshrc ~/.zshrc
	cp ~/.dotfiles/.bashrc ~/.bashrc
	cp ~/.dotfiles/.bash_profile ~/.bash_profile
	cp ~/.dotfiles/.vimrc ~/.vimrc

file_source:
	source ~/.aliases
	source ~/.zshrc
	source ~/.bashrc
	source ~/.bash_profile
	source ~/.vimrc 

pull:
	git pull

update:
	antigen selfupdate
	antigen update

antigen:
	git clone https://github.com/zsh-users/antigen.git

install: antigen source
