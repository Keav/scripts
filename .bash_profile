# ===================
# This section to use git-prompt.sh from
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# ===================

# source ~/git-prompt.sh
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ ' # Use ~/git-prompt.sh

# ===================
# The following is my custom Bash
# ===================

# Clear PATH - Then PATHs below are re-added
export PATH=""

# Ensure our System Path includes these
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# php
#export PATH="/Applications/MAMP/bin/php/php5.6.7/bin/php:$PATH"

# phplint
export PATH="/usr/local/Cellar/phplint/2.1-20150305/bin:$PATH"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

# No idea what this does, given that prompt colors are set below
export CLICOLOR=1
export LSCOLORS="gxfxcxdxcxegedabagacad"

# No idea what this does
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Customize our prompt
PS1=''
PS1="$PS1"'\D{%d/%m/%Y} '
PS1="$PS1"'\t '
PS1="$PS1"'\u@\h '            # user@host<space>
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\w'                 # current working directory

PS1="$PS1"'\[\033[33m\]'   # change color

# Add git information to our prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="$PS1"'$(parse_git_branch)'

PS1="$PS1"'\[\033[0m\]\n'      # change color
PS1="$PS1"'$ '                 # prompt: always $

# Take us straight to our Developer folder
cd '/_Developer/Web'

# ===================
# Custom alias's
# ===================

# Update our live terminal with changes made to this file
alias reload="source ~/.bash_profile"

# Always display additional information when doiing a standard 'ls'
# alias ls="ls -la -G"

# Make 'php' use the MAMP version rather than the system default
alias php='/Applications/MAMP/bin/php/php5.6.7/bin/php'

# Start and login to our MAMP MySQL terminal
alias mysql='/Applications/MAMP/Library/bin/mysql -uroot -p'

# Use specific version of Python
alias py='/usr/local/bin/python3'

# Control MAMP Server
alias apache='/Applications/MAMP/Library/bin/apachectl'


# ====================
# Custom git alias's
# ====================

# Show all our local branches
alias gb="git branch"

# Shortcut for 'git status'
alias st="git status"

# Delete all local branches that have been merged and deleted on GutHub
alias rmlmb="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"
