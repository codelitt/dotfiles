#
# ~/.bashrc
# Custom prompt
# get current branch in git repo
function parse_git_branch() {
BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
if [ ! "${BRANCH}" == "" ]
then
  STAT=`parse_git_dirty`
  echo "[${BRANCH}${STAT}]"
else
  echo ""
fi
}

# get current status of git repo
function parse_git_dirty {
status=`git status 2>&1 | tee`
dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
bits=''
if [ "${renamed}" == "0" ]; then
  bits=">${bits}"
fi
if [ "${ahead}" == "0" ]; then
  bits="*${bits}"
fi
if [ "${newfile}" == "0" ]; then
  bits="+${bits}"
fi
if [ "${untracked}" == "0" ]; then
  bits="?${bits}"
fi
if [ "${deleted}" == "0" ]; then
  bits="x${bits}"
fi
if [ "${dirty}" == "0" ]; then
  bits="!${bits}"
fi
if [ ! "${bits}" == "" ]; then
  echo " ${bits}"
else
  echo ""
fi
}

export PS1="\[\e[37m\]\u\[\e[m\]@\h \[\e[35m\]\W\[\e[m\] \[\e[33m\]\`parse_git_branch\`\[\e[m\]\\$ "

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export TERM=screen-256color-bce

#Keychain specific
eval $(keychain --eval --quiet id_rsa)

source ~/.git-completion.bash
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#Go specific
export GOPATH=~/go
export PATH=$PATH:~/go/bin

# Set vim mode
set -o vi

#RVM/Ruby settings
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export VISUAL="vim"

###Font is Fira Mono with Solarized Dark Higher Contrast for bash

##Aliases
alias todos='grep --exclude-dir=vendor -rnw '.' -e @TODO'
alias gitClean='git branch --merged | grep -v "\*" | grep -v develop | grep -v dev | xargs -n 1 git branch -d && git fetch -p'
#docker
alias dkrm='sudo docker rm'
alias dkrmi='sudo docker rmi'
alias dkps='sudo docker ps'
alias dki='sudo docker images'

# Purge! Purge the nonbelievers!
alias dkprga='dkcd && dkrm $(dkps -q) && dkrmi $(dki)'
