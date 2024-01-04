#
# Lines configured by zsh-newuser-install
#

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vnc1106/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#
# my configs
#

# move by word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Load starship shell
eval "$(starship init zsh)"
# Load configs
source ~/.config/zsh/zsh-importer.zsh
