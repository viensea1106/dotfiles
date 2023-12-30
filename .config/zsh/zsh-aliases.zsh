#
# define some aliases
#

# maybe helpful
alias cls='clear'

# my dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# use `exa` instead of `ls`
alias ls='exa'
alias la='exa -la'

# use `vim` as `nvim`
alias vim='nvim'

# user `open` as `xdg-open`
alias open='xdg-open'

# use sytemclt to reboot and shutdown
alias reboot='systemctl reboot'
alias shutdown='systemctl poweroff'
