# Lines configured by zsh-newuser-install
autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[cyan]%}%M%%%b "

#History config
#HISTFILE=~/.cache/zsh/.histfile
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=300

#Basic auto/tab complete

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/rzaqq/.zshrc'
zstyle :compinstall filename $HOME/.zshrc

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

alias rest="loginctl poweroff"
alias reboot='loginctl reboot'
alias r="ranger"
alias h="sudo"
alias c="clear"
alias e="exit"
#alias v="TERM=screen vim"
alias v="vim"
#alias V="sudo TERM=screen vim"
alias V="sudo vim"
alias ytdl="yt-dlp"
alias ls="ls --color=auto"
alias dragon="dragon-drop"
alias udmount='udiskie-mount'
alias udumount='udiskie-umount'
alias vim='TERM=screen vim'
#alias fan='h killall -9 mbpfan; h mbpfan'
alias pkg-clean='yay -Rns $(yay -Qqdtt)'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
