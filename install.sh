#!/bin/bash

cd $HOME
DOTFILES=$HOME/dotfiles

if [[ $(uname) == "Darwin" ]]; then
  if ! which brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/kylemendes/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  brew install \
    httpie \
    tree \
    ripgrep \
		zoxide \
		tmux \
		fd \
		herdr

  brew install --cask font-maple-mono-nf

  mkdir ${XDG_CONFIG_HOME}/aerospace
  ln -s "$DOTFILES/.config/aerospace" "${XDG_CONFIG_HOME}/aerospace"
  brew install --cask nikitabobko/tap/aerospace
else
  sudo apt update
  sudo apt install -y \
    httpie \
    tree   \
    ripgrep \
		tmux \
		fd

	# We're on coder, set the DOTFILES accordingly
	DOTFILES=$HOME/.config/coderv2/dotfiles

	# herdr isn't packaged for apt; use the official installer.
	if ! which herdr; then
		curl -fsSL https://herdr.dev/install.sh | sh
	fi
fi

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage
chmod 755 nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

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

git config --global alias.co checkout
git config --global alias.pushu push origin -u HEAD

ln -sf "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES/.zshprofile" "$HOME/.zshprofile"
ln -sf "$DOTFILES/.clangd" "$HOME/.clangd"
# -n so an existing symlink-to-dir is replaced, not dereferenced
# (plain -sf follows it and nests the new link inside the target).
ln -sfn "$DOTFILES/.config/nvim" "$HOME/.config/nvim"
ln -sfn "$DOTFILES/.config/kitty" "$HOME/.config/kitty"
ln -sfn "$DOTFILES/.config/ghostty" "$HOME/.config/ghostty"
ln -sfn "$DOTFILES/.config/tmux" "$HOME/.config/tmux"
ln -sfn "$DOTFILES/.config/herdr" "$HOME/.config/herdr"

ln -sf "$DOTFILES/.config/starship.toml" "$HOME/.config/starship.toml"
ln -sf "$DOTFILES/zls.json" "$HOME/zls.json"

# agents: private repo with pi/claude config, context, and their installers.
AGENTS_REPO="git@github.com:Kyle-Mendes/agents.git"
AGENTS_DIR="$HOME/agents"

if [[ -d "$AGENTS_DIR/.git" ]]; then
  git -C "$AGENTS_DIR" pull --ff-only
else
  git clone "$AGENTS_REPO" "$AGENTS_DIR"
fi

"$AGENTS_DIR/install.sh"

source "$HOME/.zshrc"
