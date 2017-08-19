export ANDROID_HOME=/home/ali/Android/Sdk
export GOPATH=~/go
export GOROOT=/usr/lib/go
export OCIO=/home/ali/dotfiles/blender/filmic-blender/config.ocio

alias l="ls -la"
alias gc="git commit -S"

# Delete all branches but master
alias git-cleanup="git branch | grep -v "master" | xargs git branch -D "

# Correct typos
alias gti="git"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/bin"
export AWS_SDK_LOAD_CONFIG=1
export REACT_EDITOR="intellij-idea-ultimate-edition"

source ~/environment_variables
