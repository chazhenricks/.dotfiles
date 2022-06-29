taps=(
  homebrew/cask
  homebrew/cask-fonts
  homebrew/core
)

packages=(
  bat        # styled cat
  cmake      # cross platform make
  curl       # get file from http
  duti       # to set default handlers for file types in MacOS
  fzf        # fuzzy finder
  gh         # github cli 
  jq         # command line json parser
  node       # javascript environment
  nvm        # node version manager
  nmap       # port scanning utility 
  openssl    #
  postgresql # postgres database
  python3    # python
  ripgrep    # fuzzy grep
  shellcheck # linting tool for bash
  sqlite     # its sql, but lite
  stow       # manage dotfiles utility
  tldr       # community driven man pages
  trash      # rm sends things to trash instead of deleting
  tmux       # terminal multiplexer
  yarn       # javascript package manager
  wget       # like curl but different
  vim        # its vi, but improved
  zsh        # zsh shell in case this machine doesn't use it
  zsh-autosuggestions
  zsh-syntax-highlighting
)

install_packages() {
  info "Configuring taps"
  apply_brew_taps "${taps[@]}"

  info "Installing packages..."
  install_brew_formulas "${packages[@]}"

  info "Cleaning up brew packages..."
  brew cleanup
}
