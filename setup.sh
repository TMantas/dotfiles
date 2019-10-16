#!/bin/sh

echo 'Setting up your Mac...'

# Install Brew.
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Brew recipes.
brew update

# clone this repo to the required dir
git clone git@gitlab.com:tmantas/dotfiles.git ~/dotfiles

cd ~/dotfiles

# Install Brewfile bundle.
brew tap homebrew/bundle
brew bundle

# Start mariadb whenever mac starts.
brew services start mariadb

# Oh-My-Zsh.
sudo rm -rf ~/.oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Set default shell.
echo "$(which zsh)" >> /etc/shells
chsh -s $(which zsh)

# Configure Kitty.
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# Configure Vim.
ln -sf ~/dotfiles/vim/init.vim ~/nvim/init.vim
ln -sF ~/dotfiles/vim/ftplugin ~/nvim/ftplugin
ln -sF ~/dotfiles/vim/config ~/nvim/config
ln -sF ~/dotfiles/vim/pluggedconf ~/nvim/pluggedconf
curl -fLo ~/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install and configure Valet.
composer global require laravel/valet
sudo valet install

# Configure hammerspoon.
ln -sf ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua

# install global npm packages
npm i -g @vue/cli knex

echo ''
echo 'Done!'

