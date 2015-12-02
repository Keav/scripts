# =============================
# Windows BASH custom profile
# =============================

# always list in long format
alias ls='ls -la --color'

# set dynamic prompt and window/tab title
PS1='\[\e]0;${PWD##*/}\a\]\n'  # set window title
PS1="$PS1"'\D{%d/%m/%Y} '
PS1="$PS1"'\t '
PS1="$PS1"'\u@\h '            # user@host<space>
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[33m\]'   # change color
    # PS1="$PS1"'$(__git_ps1)'   # bash function
    PS1="$PS1"'$(__git_ps1)'$'\n'   # bash function
    # PS1="\n${BBlack}\u@\h ${BRed}\w${BYellow}\$(__git_ps1 ' { %s }')${BGreen}"$'\n$ '

fi
PS1="$PS1"'\[\033[0m\]\n'      # change color
PS1="$PS1"'$ '                 # prompt: always $

# ===================
# Custom alias's
# ===================

# Update our live terminal with changes made to this file
alias reload="source ~/.profile"

# Always display additional information when doiing a standard 'ls'
# alias ls="ls -la -G"

# Make 'php' use the MAMP version rather than the system default
alias php='C:/wamp/bin/php/php5.5.12/php'

# Start and login to our MAMP MySQL terminal
alias mysql='C:/wamp/bin/mysql/mysql5.6.17/bin/mysql -uroot -p'

# Use specific version of Python
alias py='C:/Python34/python'

# ====================
# Custom git alias's
# ====================

# Show all our local branches
alias gb="git branch"

# Shortcut for 'git status'
alias st="git status"

# Delete all local branches that have been merged and deleted on GutHub
alias rmlmb="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"

