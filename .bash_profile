source ~/perl5/perlbrew/etc/bashrc
export PATH="/Library/PostgreSQL/9.2/bin/:$PATH"

#Add color to Bash
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#showing git branch in terminal
function parse_git_dirty() {
    [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export PS2="\[$ORANGE\]→ \[$RESET\]"

#Android SDK
export PATH="$HOME/Development/adt-bundle-mac/sdk/platform-tools:$HOME/Development/adt-bundle-mac/sdk/tools:$PATH"
#Apache ant
export PATH="/usr/local/apache-ant/bin:$PATH"

