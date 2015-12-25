
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install zsh-syntax-highlighting

# инфо о системе
brew install archey

# для получения истории в консольных командах, где ее изначально нет
brew install rlwrap

brew install coreutils

brew install fasd

#  для отображения дерева директорий
brew install tree

#sdkman - для управления несколькими версиями sdk на одной машине
curl -s get.sdkman.io | bash

#
brew install thefuck

# git console gui
brew install tig

pygmentize ?
--------------------------------------------
I wanted to map ⌥ + Left and ⌥ + Right to go backward and forward a word, respectively. I also wanted to have Option+Delete kill a word.

Here’s the setup in iterm2: Preferences -> Profiles -> Keys

Key combination: ⌥ + Delete
Action: Send Escape Sequence: [dw

Key combination: ⌥ + Left
Action: Send Escape Sequence: [1\;9C

Key combination: ⌥ + Right
Action: Send Escape Sequence: [1\;9D

--------------------------------------------

используем iterm2 nightly build  и в нем в меню iterm2 -> install shell integration

