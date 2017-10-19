all: pull source update

source:
	cp ~/.dotfiles/git/.aliases ~/.aliases
	cp ~/.dotfiles/git/.zshrc ~/.zshrc
	cp ~/.dotfiles/git/.bashrc ~/.bashrc
	cp ~/.dotfiles/git/.bash_profile ~/.bash_profile
	cp ~/.dotfiles/git/.vimrc ~/.vimrc

pull:
	git pull

update:
	antigen selfupdate
	antigen update

antigen:
	git clone https://github.com/zsh-users/antigen.git

install: antigen source
