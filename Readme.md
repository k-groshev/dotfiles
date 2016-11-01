# Receipts for MacOS
### iterm2
use it as default shell terminal and do in menu:
```sh
iterm2 -> install shell integration
```
More over, map ⌥ + Left and ⌥ + Right to go backward and forward a word, respectively. and also wanted to have Option+Delete kill a word.

Here’s the setup in menu:
```sh
Preferences -> Profiles -> Keys
```
Post there:
```sh
Key combination: ⌥ + Delete
Action: Send Escape Sequence: [dw

Key combination: ⌥ + Left
Action: Send Escape Sequence: [1\;9C

Key combination: ⌥ + Right
Action: Send Escape Sequence: [1\;9D
```

# Receipts for tools

## sdkman - conrolling using sdk versions on your host
```sh
curl -s get.sdkman.io | bash
```

## install & prettify zsh
```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
```sh
brew install zsh-syntax-highlighting
```
## Nuts & Bolts
### archey -- all your system info  in a console
```sh
brew install archey
```
### rlwrap -- getting history for console commands where it is not present by default
```sh
brew install rlwrap
```

### fasd -- quick access to files and directories for POSIX shells
```sh
brew install coreutils
brew install fasd
```
#### tree -- directory sructure as a tree for console
```sh
brew install tree
```
### thefuck -- autocorrect for last unsuccessful command
```sh
brew install thefuck
```
### tig -- console gui for git
```sh
brew install tig
```
#### pygmentize -- code syntax highlighting for console command like cat or less
```sh
sudo easy_install Pygments 
```

### fzf -- command-line fuzzy finder
```sh
brew install fzf
/usr/local/opt/fzf/install
```
