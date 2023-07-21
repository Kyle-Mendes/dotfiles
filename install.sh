#!/bin/bash

cd $HOME

if [[ $(uname) == "Darwin" ]]; then
  if ! which brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew install \
    neovim \
    httpie \
    tree \
    rip-grep
else
  sudo add-apt-repository -y ppa:neovim-ppa/unstable
  sudo apt update
  sudo apt install -y \
    neovim \
    httpie \
    tree
  nix-env --install ripgrep
fi

if ! which starship; then
  sh -c "$(curl -sS https://starship.rs/install.sh)" -y -f
fi

if [[ ! -e $HOME/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

OMZ_CUSTOM=$HOME/.oh-my-zsh/custom
if [[ ! -e $OMZ_CUSTOM/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions $OMZ_CUSTOM/plugins/zsh-autosuggestions
fi

DOTFILES=$HOME/dotfiles

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.zshprofile" "$HOME/.zshprofile"
ln -sf "$DOTFILES/.clangd" "$HOME/.clangd"
ln -sf "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES/.config/kitty" "$HOME/.config/kitty"
ln -sf "$DOTFILES/.config/starship.toml" "$HOME/.config/starship.toml"

ln -sf "$DOTFILES/zls.json" "$HOME/zls.json"

# source ~/.zshrc
