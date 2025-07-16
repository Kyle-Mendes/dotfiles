# export TERM=xterm-kitty

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
. /Users/$USER/.nix-profile/etc/profile.d/nix.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Nvim Config Dir
export XDG_CONFIG_HOME="$HOME/.config"
alias nvim-config="nvim ~/.config/nvim/init.vim"
alias love=/Applications/love.app/Contents/MacOS/love

export PATH="$PATH:$HOME/Library/Application Support/itch/apps/butler"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"
export PATH="$PATH:/Users/kylemendes/Projects/discord/discord/.local/bin"
export PATH="$PATH:/usr/local/go/bin" # Adding Go
# export PATH="$REPO_ROOT/.local/bin:$PATH"

# Custom elixir work
export PATH="$PATH:/usr/local/Cellar/elixir/1.13.2/bin"

# cpp stuff
export PATH="$PATH:/usr/local/Cellar/sdl2/2.26.3/lib"
# LIBRARY_PATH="/Library/Frameworks/SDL2.framework/:${LIBRARY_PATH}"
# export LIBRARY_PATH
#
# CPLUS_INCLUDE_PATH="/Library/Frameworks/SDL2.framework/Headers/:$CPLUS_INCLUDE_PATH"
# export CPLUS_INCLUDE_PATH
export C_PATH=/opt/homebrew/include:$C_INCLUDE_PATH
export C_INCLUDE_PATH=/opt/homebrew/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/homebrew/include:$C_INCLUDE_PATH
export LIBRARY_PATH=/opt/homebrew/lib:$LIBRARY_PATH
export PKG_CONFIG_PATH=/opt/homebrew/include:$PKG_CONFIG_PATH

# # entt
# export C_INCLUDE_PATH=/opt/homebrew/include/entt:$C_INCLUDE_PATH
# export CPLUS_INCLUDE_PATH=/opt/homebrew/include/entt:$CPLUS_INCLUDE_PATH
# export LIBRARY_PATH=/opt/homebrew/include/entt:$LIBRARY_PATH
# export PKG_CONFIG_PATH=/opt/homebrew/include/entt:$PKG_CONFIG_PATH
#
# # raylib
# export C_INCLUDE_PATH=/opt/homebrew/include/raylib:$C_INCLUDE_PATH
# export CPLUS_INCLUDE_PATH=/opt/homebrew/include/raylib:$CPLUS_INCLUDE_PATH
# export LIBRARY_PATH=/opt/homebrew/include/raylib:$LIBRARY_PATH
# export PKG_CONFIG_PATH=/opt/homebrew/include/raylib:$PKG_CONFIG_PATH

alias nwjs="/Applications/nwjs.app/Contents/MacOS/nwjs"
alias nw="/Users/kylemendes/Downloads/nwjs-sdk-v0.74.0-osx-x64/nwjs.app/Contents/MacOS/nwjs"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Starship
eval "$(starship init zsh)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -e /Users/kylemendes/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/kylemendes/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
#compdef clid
_clid() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _CLID_COMPLETE=complete-zsh  clid)
}
if [[ "$(basename -- ${(%):-%x})" != "_clid" ]]; then
  compdef _clid clid
fi
#compdef clyde
_clyde() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _CLYDE_COMPLETE=complete-zsh  clyde)
}
if [[ "$(basename -- ${(%):-%x})" != "_clyde" ]]; then
  compdef _clyde clyde
fi

# bun completions
[ -s "/Users/kylemendes/.bun/_bun" ] && source "/Users/kylemendes/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/kylemendes/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#e657a8,italic'

export PATH="/opt/homebrew/opt/llvm@14/bin:$PATH"
# export PATH="/Users/kylemendes/Projects/Odin:$PATH"


# Add direnv hook
eval "$(direnv hook zsh)"

# This has to be last
eval "$(zoxide init zsh --cmd cd)"

