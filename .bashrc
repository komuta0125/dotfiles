stty stop undef

#-------------Visuals--------------#
# You may need to manually set your language environment
export LANG=ja_JP.UTF-8
case ${UID} in
0)
     LANG=C
     ;;
esac

case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -G -w"
    ;;
linux*)
    alias ls="ls --color"
    ;;
esac

#-------------Prompt-------------#
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

#-------------Aliases-------------#
# alias where="command -v"
# alias su="su -l"
alias ftfxg="find . -type f 2> /dev/null | xargs grep -n --color"
alias vaprobash="curl -L http://bit.ly/vaprobash > Vagrantfile"
alias vim="mvim -v"
alias vi="mvim -v"
alias subl='reattach-to-user-namespace subl'
eval "$(rbenv init -)"
alias sudo='sudo -E '
export PATH="${HOME}/.scalaenv/bin:${PATH}"
eval "$(scalaenv init -)"
