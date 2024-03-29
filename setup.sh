#!/bin/sh

echo 'Setting up your Mac...'

# Install Brew.
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export PATH=/opt/homebrew/bin:$PATH

# Update Brew recipes.
brew update

brew install git

# clone this repo to the required dir
git clone git@github.com:TMantas/dotfiles.git ~/dotfiles

cd ~/dotfiles

# Install Brewfile bundle.
brew tap homebrew/bundle
brew bundle

# Oh-My-Zsh.
sudo rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Set default shell.
echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

# Configure Vim.
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -sF ~/dotfiles/vim/ftplugin ~/.config/nvim/ftplugin
ln -sF ~/dotfiles/vim/config ~/.config/nvim/config
ln -sF ~/dotfiles/vim/pluggedconf ~/.config/nvim/pluggedconf
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Configure hammerspoon.
ln -sf ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua

# install global npm packages
npm i -g knex

# MacOS setup
defaults write com.apple.dock tilesize -integer 55; killall Dock

echo ''
echo 'Done!'
