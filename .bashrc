#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# setup ls and grep to always run in color mode
alias ls='ls --color=auto'
alias grep='grep --color=auto'

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# enable Starship.rs shell prompt
eval "$(starship init bash)"

# setup NVM for node version management
source /usr/share/nvm/init-nvm.sh

# Load Angular CLI autocompletion.
source <(ng completion script)

# alias for maintaining dotfiles bare repository
alias dotfiles='/usr/bin/git --git-dir=/home/collect/.dotfiles/ --work-tree=/home/collect'

fastfetch
