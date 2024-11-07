# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
autoload -Uz compinit promptinit
compinit
promptinit

export EDITOR=nvim
export VISUAL=nvim

# Shortcuts
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias v='nvim'
alias cat='bat'
alias sudo='sudo '
alias yy='yazi'
alias /='cd /'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=$PATH:/home/msiwiec/.spicetify

alias hows-my-gpu='echo "NVIDIA Dedicated Graphics" | grep "NVIDIA" && lspci -nnk | grep "NVIDIA Corporation AD104" -A 2 | grep "Kernel" && echo "Enable and disable the dedicated NVIDIA GPU with nvidia-enable and nvidia-disable"'
alias nvidia-enable='sudo ./nvidia-enable.sh'
alias nvidia-disable='sudo ./nvidia-disable.sh'

# Created by `pipx` on 2024-10-15 18:57:57
export PATH="$PATH:/home/msiwiec/.local/bin"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
