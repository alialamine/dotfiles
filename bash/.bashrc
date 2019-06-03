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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ali/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ali/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ali/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ali/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && (echo terminal; exit 0) || (echo error; exit 1))" "$([ $? = 0 ] && echo Task finished || echo Something went wrong!)" "$(history | sed -n "\$s/^\s*[0-9]\+\s*\(.*\)[;&|]\s*alert\$/\1/p")"'

complete -F _apex apex
