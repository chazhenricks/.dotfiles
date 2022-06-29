apps=(
	docker
	firefox
	google-chrome
	slack
	postman
	iterm2
	spotify
	visual-studio-code
	vlc
)

masApps=()

install_macos_apps(){
	info "Installing macOs apps..."
	install_brew_casks "${apps[@]}"
}

install_masApps(){
	info "Installing App Store apps..."
	for app in "${masApps[@]}";do
		mas install $app
	done
}
