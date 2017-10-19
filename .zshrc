autoload antigen
 
# Source vers Antigen
 source ~/.dotfiles/antigen/antigen.zsh
 
# Installation de oh-my-zsh
 antigen use oh-my-zsh
 
# différents plugins
 # support de git
 antigen bundle arialdomartini/oh-my-git
 antigen bundle git
 
# coloration syntaxique dans le shell
 antigen bundle zsh-users/zsh-syntax-highlighting
 
# theme
 antigen theme agnoster
 
antigen apply
