#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

. scripts/utils.sh
. scripts/brew.sh
. scripts/apps.sh
. scripts/config.sh
. scripts/fonts.sh
. scripts/packages.sh
. scripts/oh-my-zsh.sh

cleanup() {
  echo "Finishing..."
}

wait_input() {
  read -p "Press enter to continue: "
}

trap cleanup EXIT

main() {
  info "Installing ..."

  info "======= Homebrew packages ======="
  wait_input
  install_packages
  success "Finished installing Homebrew packages"

  info "======= Homebrew Fonts ======="
  wait_input
  install_fonts
  success "Finished installing fonts"

  info "======= Oh-my-zsh ======="
  wait_input
  install_oh_my_zsh
  success "Finished installing Oh-my-zsh"

  install_zsh_plugins
  success "Finished installing Oh-my-zsh plugins"

  info "======= MacOS Apps ======="
  wait_input
  install_macos_apps

  install_masApps
  success "Finished installing macOS apps"



  info "======= Configuration ======="
  wait_input
  stow_dotfiles


  success "Finished stowing dotfiles"




  success "Done"

  info "System needs to restart. Restart?"

  select yn in "y" "n"; do
    case $yn in
        y ) sudo shutdown -r now; break;;
        n ) exit;;
    esac
  done
}

main
