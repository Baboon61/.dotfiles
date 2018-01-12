autoload antigen

DEFAULT_USER=$USER

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

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

PROMPT='${ret_status}%{$fg_bold[cyan]%}[%D %T]%{$fg_bold[red]%} • %{$reset_color%}%{$fg_bold[blue]%}%d% %{$fg_bold[red]%} →  '
POSTEDIT=$'\e[0m'
