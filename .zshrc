autoload -U colors && colors
PS1="%B%{$fg[blue]%}[%n]%{$fg[yellow]%}[%2~]%{$fg[blue]%}$%{$reset_color%}%b "

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

## Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files. 

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
autoload edit-command-line; zle -N edit-command-line
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -v '^?' backward-delete-char
bindkey -v '^w' backward-kill-word
bindkey -v '^u' backward-kill-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete
bindkey -M vicmd '^u' backward-kill-line
bindkey -M visual '^u' backward-kill-line

# git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true 
zstyle ':vcs_info:*' unstagedstr '*'
zstyle ':vcs_info:*' stagedstr '+'
setopt PROMPT_SUBST
RPROMPT='%B%{$fg[yellow]%}${vcs_info_msg_0_}'
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# coloring man
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

zathura() { nohup zathura $1 > /dev/null 2>&1 & }

alias vim='nvim'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias showmethekeys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias ucsm="cd ~/Documentos/UCSM/SEMESTRE\ 2021/"
alias videos="cd ~/Vídeos/"
alias d="cd ~/Documentos/"
alias D="cd ~/Descargas/"
alias i="cd ~/Imágenes/"
alias a="cd ~/audios/"
alias P="cd ~/Plantillas/"
alias p="cd ~/projects/"
alias dotfiles="cd ~/.dotfiles/"
alias vimrc="vim ~/.config/nvim/init.vim"
alias i3rc="vim ~/.config/i3/config"
alias rofirc="vim ~/.config/rofi/config.rasi"
alias zshrc="vim ~/.zshrc"
alias alacrittyrc="vim ~/.config/alacritty/alacritty.yml"
alias kittyrc="vim ~/.config/kitty/kitty.conf"
alias .config="cd ~/.config/"
alias .dotfiles="cd ~/.dotfiles/"
alias ..="cd .."
alias -- -='cd -'
# current working directory
alias work="cd $HOME/Documentos/ucsm/semestre-2021/software/estado-arte"

pfetch
