






stow_dotfiles() {
  local files=(
    ".profile*"
    ".zprofile"
    ".gitconfig"
    ".aliases"
    ".zshrc"
    ".vimrc"
  )
  local folders=(
    ".git-templates/hooks"
  )
  info "Removing existing config files"
  for f in "${files[@]}"; do
    rm -f "$HOME/$f" || true
  done

  # Create the folders to avoid symlinking folders
  for d in "${folders[@]}"; do
    rm -rf "${HOME:?}/$d" || true
    mkdir -p "$HOME/$d"
  done

  local dotfiles="git vim zsh"
  info "Stowing: $dotfiles"
  stow -d stow --verbose 1 --target $HOME $dotfiles
}
