# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/crocflamingo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias nv="nvim"
alias mk="make"
alias mki="doas make install"
alias mkc="make clean"
alias mkci="doas make clean install"
alias gb="go build"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
