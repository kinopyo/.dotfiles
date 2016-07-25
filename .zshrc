# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/heroku/bin:/Users/kinopyo/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin

export EDITOR='vim'
export USE_BUNDLER=1
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# git
alias gs="git status -sb"
alias gca="git commit --amend"
alias grh="git reset --hard"
alias grh1="git reset --hard HEAD~1"
alias grs="git reset --soft"
alias grs1="git reset --soft HEAD~1; git reset"
alias gr="git reset"
alias gch="git log --pretty=format:'%h' -n 1 | pbcopy"
alias gbr="git for-each-ref refs/heads/ \
                 --count=10 \
                 --sort=-committerdate \
                 --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset),%(authorname),(%(color:green)%(committerdate:relative)%(color:reset))' | \
                 column -t -s ','"
# dependent on https://github.com/mooz/percol
alias gbi="git branch | percol | xargs git checkout"
alias gai="git status -sb | percol | awk '{ print $2 }' | xargs git add"
alias gsp="git stash pop"
alias gsu="git stash -u"
alias gsh="git stash"
alias gac="git add .; git commit"
alias t="tig"

# editor
alias s="subl"
alias m="mvim"

# misc
alias zc="mvim ~/.zshrc"
alias vc="mvim ~/.vimrc.after"

# rails
# spring command
alias ss="spring stop"
alias rc!="spring stop; rails c"
alias rs!="spring stop; rails s"
alias rdm="rake db:migrate"
alias rdr="rake db:rollback"
alias rdrt="RAILS_ENV=test rake db:rollback"
alias rgm="spring rails g migration"

alias bx="bundle exec"
# alias rake="noglob rake"
alias rspec="bin/rspec"
alias rdmt="RAILS_ENV=test rake db:migrate"

# heroku
alias hlog="heroku logs --tail"
alias hrc="heroku run rails console"
alias hpush="git push heroku master"
alias hrdm="heroku run rake db:migrate"

# https://github.com/rupa/z, for fast navigation
. ~/bin/z.sh

export ANSIBLE_HOSTS=~/ansible_hosts



for f (~/.zsh/percol-utilities/*) source "${f}"

# alias L="tmux capture-pane; tmux showb -b 0 | tail -n 3 | head -n 1"
# pry () {
    # if [ -e Gemfile.lock ] && [ -e ./config/environment.rb ] && grep -q pry Gemfile.lock
    # then
        # bundle exec pry -r ./config/environment "$@"
    # else
        # /usr/bin/pry "$@"
    # fi
# }

# direnv hook
# eval "$(direnv hook $0)"

# rbenv
eval "$(rbenv init -)"
