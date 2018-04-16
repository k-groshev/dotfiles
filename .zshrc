# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# http://mrjoelkemp.com/2013/06/remapping-iterm2-option-keys-for-fish-terminal/
bindkey "\e\[1\;9C" forward-word
bindkey "\e\[1\;9D" backward-word
bindkey "\e\[dw" backward-kill-word

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"
#ZSH_THEME="gamussa_skwp"

BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_GIT_COLORIZE_DIRTY=true


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

HISTCONTROL=ignoredups:ignorespace

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ant atom battery bower bgnotify brew brew-cask compleat colorize dash docker encode64 fasd Forklift gem git-extras gitfast gitignore glassfish gradle grails grunt gulp httpie jsontools marked2 mercurial mvn node npm osx rake rbenv sublime spring thefuck svn vagrant web-search xcode z)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/bin:/usr/local/share/npm/bin:$JAVA_HOME/bin


PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && eval `gdircolors -b ~/.dircolors`
alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"

# Terminal 256 colors
export TERM="xterm-256color"

export EDITOR="subl -w"

#xmlcatalog
#export XML_CATALOG_FILES="`brew --prefix`/etc/xml/catalog"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
#export HOMEBREW_GITHUB_API_TOKEN="do not forget to add it!"

export JRUBY_OPTS="-Xcompat.version=RUBY1_9 -Xcompile.mode=OFF -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-Xverify:none -Xcext.enabled=true"

eval "$(fasd --init auto)"

setjdk18

if which rbenv > /dev/null; then eval "$(rbenv init - --no-rehash)"; fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "${HOME}/.iterm2_shell_integration.zsh" ]] && source ${HOME}/.iterm2_shell_integration.zsh

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman" && source "${HOME}/.sdkman/bin/sdkman-init.sh"

#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# added by travis gem
#[ -f /Users/apple/.travis/travis.sh ] && source /Users/apple/.travis/travis.sh

export FZF_DEFAULT_OPTS='
  --bind ctrl-f:page-down,ctrl-b:page-up
  --color fg:102,bg:233,hl:65,fg+:15,bg+:234,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

