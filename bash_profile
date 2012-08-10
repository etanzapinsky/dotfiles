# ls defualt now is colored output
alias ls='ls -G'
# Prints all files (including hidden ones) with permissions
alias ll='ls -laF' 
# Prints all files with permissions
alias la='ls -lF'
# scheme edwin alias
alias edwin='scheme -edwin -edit'

# Colorful grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Adds bin where python installs packages 
# (I think lion caused this to happen)
PATH=/usr/local/share/python:$PATH
# adds bin where brew installs programs
PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH

# Prompt
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1="\[\033[0;31m\]\u\[\033[00m\]:\[\033[0;36m\]\w\[\033[00m\]\[\033[0;33m\]\$(parse_git_branch)\[\033[00m\]$ "
#export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

# virtualenvwrapper
# source /usr/local/bin/virtualenvwrapper.sh

# Adds git branch to prompt
# function parse_git_branch {
#   ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
#   echo "("${ref#refs/heads/}")"
# }
# RED="\[\033[0;31m\]"
# YELLOW="\[\033[0;33m\]"
# GREEN="\[\033[0;32m\]"

# PS1="\$(parse_git_branch)\$ "

# Django bash completion
. /usr/local/lib/python2.7/site-packages/django/extras/django_bash_completion

# Links me to the shared Yipit bash profile
export YIPIT_PATH=~/Development/yipit
source ${YIPIT_PATH}/conf/yipit_bash_profile

# Allows me to access my virtualenvwrapper functions
source /usr/local/share/python/virtualenvwrapper.sh
