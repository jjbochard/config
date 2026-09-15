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
alias md="mkdir -p"
alias rd="rmdir"
# alias -="cd -"

alias history="omz_history"
alias h="history"
alias hs="history | grep -i"

alias ll="ls -la"
alias ls="ls -G"

alias cl="clear"

alias egrep="grep -E"
alias fgrep="grep -F"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.venv,venv}"

# git
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gbd="git branch --delete"
alias gbD="git branche --delete --force"
alias gba="git branch --all"
alias gcb="git branch -b"
alias gcm="git checkout $(git_main_branch)"
alias gco="git commit -m"
alias gpull="git pull"
alias gpush="git push"
alias gsu="git push --set-upstream origin "$(git_current_branch)""
alias gl="glods --all"
alias gs="git status --short --branch"
alias gundo="git reset --mixed HEAD^"
alias gfp="git push --force-with-lease origin HEAD:main"
alias gsh="git show"
# alias gwip="git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]""


# pip
alias pipg="pip freeze | grep"
alias pipi="pip install"
alias pipir="pip install -r requirements.txt"
alias pipl="pip list -o"
alias pipiu="pip install --upgrade"
alias pipu="pip uninstall"

# zsh
alias rsh="source ~/.zshrc"
alias vsh="vim ~/.zshrc"
alias vsht="vim ~/.oh-my-zsh/themes/agnoster.zsh-theme"
config_folder_path="~/code/config/"
alias cpcfg="cp ~/.zshrc $config_folder_path &&
cp ~/.oh-my-zsh/themes/agnoster.zsh-theme $config_folder_path &&
cp ~/Library/Application\ Support/Code/User/settings.json $config_folder_path &&
cp ~/Library/Application\ Support/Code/User/keybindings.json $config_folder_path"

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
