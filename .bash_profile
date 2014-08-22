# home
set -o vi
# "ls" color
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx alias grep="grep --color" alias eb="vim ~/.bash_profile" alias ea="vim ~/.ackrc"
export LESS=-RFX

alias tmux="TERM=screen-256color-bce tmux"

alias ctags="ctags -R --exclude=.git --exclude=log ."

# git
alias gg="git grep -i"
# git-whistles
alias gpb="git pivotal-branch"

export PATH="/usr/local/Cellar/ctags/5.8/bin:$PATH:" # overwrite system ctags

# housetrip
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:~/scripts:" # dump custom bash scripts

alias be="bundle exec"
alias jspec="jasmine-node spec"
alias gdel="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
alias cop="rubocop"

export BUNDLER_EDITOR=vim

# share bash history between sessions
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
export HISTSIZE=2000
export HISTFILESIZE=2000
shopt -s histappend # append to history

# save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# ebenv stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -);rbenv rehash" # ruby setup
# brew uninstall ruby-build
# brew install --HEAD ruby-build
# ruby-build --definitions

# heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
eval "$($HOME/.ht/bin/ht init -)"

# PS1
# colours
CRed="\[\e[0;31m\]"
CYellow="\[\e[0;33m\]"
CGreen="\[\e[0;32m\]"
CPurple="\[\e[0;35m\]"
CEnd="\[\e[0m\]"

parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
parse_git_tag () {
  git describe --tags 2> /dev/null
}
parse_git_branch_or_tag() {
  local OUT="$(parse_git_branch)"
  if [ "$OUT" == " ((no branch))" ]; then
    OUT="($(parse_git_tag))";
  fi
  echo $OUT
}

# PS1="$CRed\u$CEnd@$CYellow\h$CEnd:$CGreen\\w$CEnd$CPurple\$(parse_git_branch_or_tag)$CEnd\$ "
PS1="$CRed\u$CEnd$CYellow@$CEnd$CGreen\\w$CEnd$CPurple\$(parse_git_branch_or_tag)$CEnd$CYellow\$$CEnd "

# yourube-dl
alias dl="youtube-dl"
