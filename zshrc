# (ZSH) 'POWERLEVEL10K' THEME ---------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# ==============================================================================

alias n='nvim'
alias nz='nvim ~/.zshrc'
alias nn='nvim ~/.config/nvim/init.vim'
alias sz='source ~/.zshrc'

alias pin='sudo pacman -S'
alias pup='sudo pacman -Syyu'



# START OF RELEVANT SYNTAX
# ******************************************************************************

# MANUALLY SET THE ENVIRONMENT LANGUAGE ----------------------------------------
# => Needed to make the 'BULLET TRAIN' git icons work correclty!
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8 # ==============================================================================


# MANUALLY SET THE 'PATH' ENVIRONMENT VARIABLES --------------------------------
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
# ==============================================================================


# NVM SETUP --------------------------------------------------------------------
# => This is needed on MacOS only because NVM was installed through homebrew.
# => On Linux / Windows WSL the if-statement should return 'false'.
if command -v brew >/dev/null 2>&1; then
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
fi
# ==============================================================================


# (ZSH) HISTORY-SUBSTRING-SEARCH CUSTOMISATION ---------------------------------
setopt HIST_IGNORE_ALL_DUPS
# ==============================================================================


# ZGEN SETUP -------------------------------------------------------------------
# => Load the zgen script.
source "${HOME}/.zgen/zgen.zsh"

# Check if there's no init script.
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/wd
    zgen load lukechilds/zsh-nvm
    # zgen oh-my-zsh plugins/npm
    # zgen oh-my-zsh plugins/docker
    # zgen oh-my-zsh plugins/docker-compose
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load romkatv/powerlevel10k powerlevel10k


    # save all to init script
    zgen save
fi

# => "zsh-history-substring-search" plugin
# => Key bindings (for UP and DOWN arrow keys).
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# ==============================================================================

# ******************************************************************************
# END OF RELEVANT SYNTAX
# ******************************************************************************

#Rust:
source $HOME/.cargo/env

#Ruby On Rails:
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Golang:
export GOPATH=$HOME/Projects/go

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#FZF:
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
