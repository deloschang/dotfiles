# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins vi-mode rails tmux

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

################################
###  File ShortCut
################################
alias j="cd ~/self_projects/jozy/"
alias cl="cd ~/self_projects/clint/"
alias gs="git status"
alias ga="git add . "
alias gd="git diff"
alias gp="git push"
alias gpu="git pull"
alias gpod="git pull origin develop"
alias gppd="git push origin develop:develop"
alias gb="git branch"
alias c="cd ~/self_projects/housingcake/"
alias s="cd ~/self_projects/survey-bot/"
alias tm="tmux"
alias tml="tmux list-sessions"


function ta
  tmux -2 attach -t "$argv"
end

function tk
  tmux kill-session -t "$argv"
end

function gc
  git commit -a -m "$argv"
end

function gco
  git checkout "$argv"
end
