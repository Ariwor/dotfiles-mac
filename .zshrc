# export ZSH="$HOME/.oh-my-zsh"

source $HOME/antigen.zsh

# Path
## TeX Live
export PATH=/usr/local/texlive/2022/bin/universal-darwin:$PATH

# Env variables
export TERMINAL="kitty"
export EDITOR="code"
export VISUAL="code"

# Aliases

## General
alias icat="kitty +kitten icat"
alias cl="clear"
alias zcon="vi $HOME/.zshrc"
alias dot="$HOME/repos/dotfiles-mac/"
alias pip="pip3"
alias mexec="chmod a+x"

## File manipulation
alias ll="ls -Ahl"
alias rm="rm -rfv"
alias rmi="rm -rfvi"
alias cp="cp -rfv"
alias mv="mv -fv"
alias mvi="mv -fvi"

### Fast find
ff() {
    find . -name "$1"
}

## Git
alias gd="git diff --color-words"
alias gl="git log --oneline --decorate"
alias glog="git log --oneline --all --graph --decorate -n 30"
alias gslog="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle command-not-found
antigen bundle ael-code/zsh-colored-man-pages
antigen bundle httpie
antigen bundle docker
antigen bundle git-extras
antigen bundle zsh-users/zsh-completions
# antigen bundle sindresorhus/pure
# antigen bundle mafredri/zsh-async

# Load Catppuccin for zsh-syntax-highlighting (Catppuccin Mocha)
source ~/repos/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"export PS1="%M $ "

# Prompt

fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit; promptinit
prompt pure

# Launch neofetch on startup
# neofetchalias config='/usr/bin/git --git-dir=/Users/aarampatzis/.cfg/ --work-tree=/Users/aarampatzis'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/aarampatzis/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/aarampatzis/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/aarampatzis/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/aarampatzis/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<