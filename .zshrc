##zmodload zsh/zprof

# http://mrjoelkemp.com/2013/06/remapping-iterm2-option-keys-for-fish-terminal/
bindkey "\e\[1\;9C" forward-word
bindkey "\e\[1\;9D" backward-word
bindkey "\e\[dw" backward-kill-word

source /usr/local/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# antigen bundle rupa/z
antigen bundles <<EOBUNDLES
    git
    git-extras
    git-flow
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
    common-aliases
    compleat
    npm
    web-search
    command-not-found
    # The heroku tool helper plugin.
    heroku
    # fzf-z plugin ctrl+G
    andrewferrier/fzf-z
    sublime
    z
    rake
    rbenv
    gitignore
    kubectl
    docker
    docker-compose
    helm
    # command autocorrection with thefuck script
    # robbyrussell/oh-my-zsh plugins/thefuck
    # custom aliases
    $HOME/java_ee/apps/dotfiles/zsh_custom
EOBUNDLES

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Tell Antigen that you're done.
antigen apply


# Setup zsh-autosuggestions
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"


# Load custom aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
# Load NVM
export NVM_DIR="$(realpath $HOME/.nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


fpath=(/usr/local/share/zsh/site-functions $fpath)


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

HISTCONTROL=ignoredups:ignorespace

# go
export GOPATH=$HOME/go 
export GOROOT=/usr/local/opt/go/libexec 

# Customize to your needs...
#export PATH=/Users/kgroshev/Library/Python/3.7/bin:
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/bin:/usr/local/share/npm/bin:$JAVA_HOME/bin

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH:$GOPATH/bin:/Users/kgroshev/.gem/ruby/2.6.0/bin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && eval `gdircolors -b ~/.dircolors`
alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"
alias mc='LANG=en_EN.UTF-8 mc -u'
alias k="kubectl"

# Terminal 256 colors
export TERM="xterm-256color"

# tmux
alias tmux="TERM=screen-256color-bce tmux -u"
DISABLE_AUTO_TITLE=true

#export EDITOR="subl -w"
export EDITOR="vi"


export GEM_HOME="$HOME/.gem"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#export HOMEBREW_GITHUB_API_TOKEN="do not forget to add it!"

export JRUBY_OPTS="-Xcompat.version=RUBY1_9 -Xcompile.mode=OFF -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-Xverify:none -Xcext.enabled=true"

eval "$(fasd --init auto)"

export CONFLUENT_PLATFORM_VERSION=5.2.1
export CONFLUENT_HOME=~/java_ee/confluent-$CONFLUENT_PLATFORM_VERSION
export PATH=$CONFLUENT_HOME/bin:$PATH
alias cnfl="confluent"


if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

[[ -s "${HOME}/.iterm2_shell_integration.zsh" ]] && source ${HOME}/.iterm2_shell_integration.zsh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman" && source "${HOME}/.sdkman/bin/sdkman-init.sh"

# added by travis gem
#[ -f /Users/apple/.travis/travis.sh ] && source /Users/apple/.travis/travis.sh

export FZF_DEFAULT_OPTS='
  --bind ctrl-f:page-down,ctrl-b:page-up
  --color fg:102,bg:233,hl:65,fg+:15,bg+:234,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## zprof
