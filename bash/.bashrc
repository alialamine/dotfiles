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
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/anaconda/bin"
export PATH="$PATH:/home/ali/.gem/ruby/2.7.0/bin/fastlane"
export PATH="$PATH:/opt/atlassian/plugin-sdk/bin"
export PATH="$PATH:/opt/cuda/bin"
export AWS_SDK_LOAD_CONFIG=1
export REACT_EDITOR="intellij-idea-ultimate-edition"
export PROMPT_COMMAND='history -a'

export GOOGLE_APPLICATION_CREDENTIALS="/home/ali/gozilla-6c086-561c158aea15.json"

# Fix android studio on swaywm
export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk

# For gradle
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk

export _JAVA_AWT_WM_NONREPARENTING=1

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

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && (echo terminal; exit 0) || (echo error; exit 1))" "$([ $? = 0 ] && echo Task finished || echo Something went wrong!)" "$(history | sed -n "\$s/^\s*[0-9]\+\s*\(.*\)[;&|]\s*alert\$/\1/p")"'

#complete -F _apex apex
#source ~/bin/sls-autocomplete.sh

source ~/.bashrcekctl

REACT_EDITOR=gvim


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ali/dotfiles/bin/bin/google-cloud-sdk/path.bash.inc' ]; then . '/home/ali/dotfiles/bin/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ali/dotfiles/bin/bin/google-cloud-sdk/completion.bash.inc' ]; then . '/home/ali/dotfiles/bin/bin/google-cloud-sdk/completion.bash.inc'; fi

alias fastlane="/home/ali/.gem/ruby/2.7.0/bin/fastlane"
alias antlr=antlr4


