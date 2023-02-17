#!/bin/bash

cd $HOME

if [[ $(uname) == "Darwin" ]]; then
  if ! which brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew install \
    neovim \
    httpie \
    tree 
else
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt update
  sudo apt install -y \
    neovim \
    httpie \
    tree
fi

if ! which starship; then
  curl -sS https://starship.rs/install.sh | sh
fi


DOTFILES=$HOME/dotfiles

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES/.config/kitty" "$HOME/.config/kitty"
ln -sf "$DOTFILES/.config/starship.toml" "$HOME/.config/starship.toml"
