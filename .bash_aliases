# Common.
alias g='git'
alias gr='grep --color=always -n -R -i'
alias gti='git'
alias killbg='kill %%'
alias l='ls --color -lh --group-directories-first'
alias ls='ls --color -lh --group-directories-first'
alias lessf='less +F'
alias pyenv='source ~/pyenv/bin/activate'
alias unbz2='tar xvjf'
alias untar='tar xvf'
alias vim='vim -X'

# TMUX.
alias s='tmux ls'
alias sr='tmux a -d -t'
alias ss='tmux new -s'

# Go to root of git dir.
g3() {
  cd $(git rev-parse --show-cdup)
}
