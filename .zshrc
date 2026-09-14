# PATH
export PATH="/usr/local/bin:$PATH"
# =========================================


# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# =========================================

# Plugins
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/# Add wisely, as too many plugins slow down shell startup.
plugins=(
    dirhistory
    history
    pip
    git
    virtualenv
    vscode
    z
    poetry
    conda
    brew
    colored-man-pages
    sudo
    aliases
)
# =========================================

source $ZSH/oh-my-zsh.sh

# Alias
alias ll="ls -la"
alias gundo="git reset --mixed HEAD^"
alias gfp="git push --force-with-lease origin HEAD:main"

alias rsh="source ~/.zshrc"
alias vsh="vim ~/.zshrc"
alias vsht="vim ~/.oh-my-zsh/themes/agnoster.zsh-theme"

alias cpcfg="cp ~/.zshrc ~/code/config/ && cp ~/.oh-my-zsh/themes/agnoster.zsh-theme ~/code/config/ && cp ~/Library/Application\ Support/Code/User/settings.json ~/code/config/ && cp ~/Library/Application\ Support/Code/User/keybindings.json ~/code/config/"
# =========================================

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# =========================================

# Pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# =========================================
# Miniconda
export PATH="$HOME/miniconda3/bin:$PATH"
# =========================================

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# =========================================
# Spark
export SPARK_HOME=/opt/homebrew/opt/apache-spark/libexec
export PATH="$SPARK_HOME/bin:$PATH"
# ==========================================

# Homebrew
if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jeremy/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jeremy/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jeremy/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jeremy/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

