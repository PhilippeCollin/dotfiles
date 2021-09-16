# Global variables
# --------------------------------------

# Timezone
export TZ="America/Toronto"

# Oh My ZSH
export ZSH=$HOME/.oh-my-zsh

if [ $SPIN ]; then
    export ZSH_THEME="cloud"
else    
    export ZSH_THEME="robbyrussell"
fi

# Utilities
export EDITOR='vim'
export VISUAL='vim'
export GIT_EDITOR='vim'

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Path
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"