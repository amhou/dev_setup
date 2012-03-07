# PATH VARIABLES
export PATH="~/android-sdk-macosx/platform-tools:$PATH"
export PATH="/usr/local/mxcl-homebrew-97ddd74/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# ALIAS
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias lsusb="system_profiler SPUSBDataType"
alias tree="tree -C"

# COLOR SETTINGS
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# FUNCTIONS
function mkcd() {
    [ -n "$1" ] && mkdir -p "$@" && cd "$1";
}

# GIT SETTINGS
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\[\033[0m\]\u@\h \W\[\033[1;33m\]$(parse_git_branch)\[\033[0m\]$ '
