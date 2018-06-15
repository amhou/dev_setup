# PATH VARIABLES
export PATH="/usr/local/bin:$PATH"
export PATH="~/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/ahou/Library/Android/sdk/platform-tools:$PATH"

# ALIAS
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias lsusb="system_profiler SPUSBDataType"
alias tree="tree -C"
alias ll="ls -l"
alias sed="gsed"
alias dongers="echo ヽ༼ຈل͜ຈ༽ﾉ"
alias brake="bundle exec rake"
alias be="bundle exec"
alias tmux='tmux -2'
#alias ctags="/usr/local/bin/ctags"
#alias gcc="/usr/local/bin/gcc-4.8"
alias dc='docker-compose'

# COLOR SETTINGS
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR='vim'
export SHELL='/bin/bash'

# FUNCTIONS
function mkcd() {
    [ -n "$1" ] && mkdir -p "$@" && cd "$1";
}

# GIT SETTINGS
alias gitvim="git log --graph --pretty=format:'%h - %d %s (%cr) <%an>' | vim -R -c 'set filetype=git nowrap' -"
source /usr/local/etc/bash_completion

#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

PathShort="\w"

export PS1='$(echo "'$Yellow$PathShort'") \
$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
    echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
    if [ "$?" -eq "0" ]; then \
        # @4 - Clean repository - nothing to commit
        echo "'$Green'"$(__git_ps1 "{%s}"); \
    else \
        # @5 - Changes to working tree
        echo "'$Red'"$(__git_ps1 "{%s}"); \
    fi) '$Color_Off'\$ "; \
else \
    # @2 - Prompt when not in GIT repo
    echo "'$Color_Off'\$ "; \
fi)'

ulimit -n 1024

source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'
