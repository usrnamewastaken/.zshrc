
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.


# History in cache directory:
HISTFILE=/var/mobile/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY


#name color
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[blue]%}%M %{$fg[white]%}%~%{$fg[white]%}]%
 %T % %{$reset_color%}$%b "

#ls filetype highlighting 
alias ls='ls --color=auto'

#fix “#” in every line
unsetopt PROMPT_SP_

#auto run programs 
dpkg --list | wc --lines
uptime -p
autoload -Uz tetriscurses
#sources 
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#aliases
SDKROOT=/var/mobile/iPhoneOS14.4.sdk
alias nic='/var/mobile/theos/bin/nic.pl'

