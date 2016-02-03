#!/bin/sh
rm ~/.zshrc
rm -rf ~/.oh-my-zsh/custom
rm ~/.oh-my-zsh/themes/gamussa_skwp.zsh-theme
rm ~/.oh-my-zsh/themes/bullet-train.zsh-theme
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.inputrc
rm ~/.tigrc
rm ~/.ssh/config
rm ~/.dircolors
rm ~/.tmux.conf
rm -rf ~/.vim
rm -rf ~/.vimoutliner
rm ~/.vimrc
rm ~/.vimoutlinerrc
rm ~/.psqlrc

ln -s ~/java_ee/apps/dotfiles/.zshrc ~/.zshrc
ln -s ~/java_ee/apps/dotfiles/zsh_custom ~/.oh-my-zsh/custom
ln -s ~/java_ee/apps/dotfiles/gamussa_skwp.zsh-theme ~/.oh-my-zsh/themes/gamussa_skwp.zsh-theme
ln -s ~/java_ee/apps/dotfiles/bullet-train.zsh-theme ~/.oh-my-zsh/themes/bullet-train.zsh-theme
ln -s ~/java_ee/apps/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/java_ee/apps/dotfiles/.gitignore ~/.gitignore
ln -s ~/java_ee/apps/dotfiles/.inputrc ~/.inputrc
ln -s ~/java_ee/apps/dotfiles/.tigrc ~/.tigrc
ln -s ~/java_ee/apps/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/java_ee/apps/dotfiles/.dircolors ~/.dircolors
ln -s ~/java_ee/apps/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/java_ee/apps/dotfiles/.vim ~/.vim
ln -s ~/java_ee/apps/dotfiles/.vimoutliner ~/.vimoutliner
ln -s ~/java_ee/apps/dotfiles/.vimrc ~/.vimrc
ln -s ~/java_ee/apps/dotfiles/.vimoutlinerrc ~/.vimoutlinerrc
ln -s ~/java_ee/apps/dotfiles/.psqlrc ~/.psqlrc

ls -lah ~/.zshrc
ls -lah ~/.oh-my-zsh/custom
ls -lah ~/.oh-my-zsh/themes/gamussa_skwp.zsh-theme
ls -lah ~/.oh-my-zsh/themes/bullet-train.zsh-theme
ls -lah ~/.gitconfig
ls -lah ~/.gitignore
ls -lah ~/.inputrc
ls -lah ~/.tigrc
ls -lah ~/.ssh/config
ls -lah ~/.dircolors
ls -lah ~/.tmux.conf
ls -lah ~/.vim
ls -lah ~/.vimoutliner
ls -lah ~/.vimrc
ls -lah ~/.vimoutlinerrc
ls -lah ~/.psqlrc

mkdir -p ~/.history