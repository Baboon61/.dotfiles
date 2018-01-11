autoload antigen

DEFAULT_USER=$USER

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
PS1=$'\e[0;30m[%D/\%\}/Y-%m-%d %H:%M:%S}] \e[0;31m%~ $ \e[0m'
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
