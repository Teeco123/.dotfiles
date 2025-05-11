echo "Running MacOS configuration"

echo "Type one time password for later config"
sudo -v

echo "Applying .zshrc and .zprofile"
source .zshrc
source .zprofile

echo "Installing xcode command line tools"
xcode-select --install

echo "Installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Taping brew formulae's"
brew tap koekeishiya/formulae
brew tap FelixKratz/formulae

echo "Installing brew formulae's"
brew install bash-language-server
brew install cmake
brew install eza
brew install yabai
brew install skhd
brew install sketchybar
brew install git
brew install llvm
brew install lua-language-server
brew install mas
brew install neovim
brew install nvm
brew install ripgrep
brew install shfmt
brew install stylua
brew install typescript-language-server
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

echo "Installing brew casks"
brew install --cask wezterm
brew install --cask docker
brew install --cask font-hack-nerd-font

echo "Changing MacOS defaults"
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.6
defaults write com.apple.dock static-only -int 1
defaults write com.apple.dock show-recents -int 0
defaults write com.apple.dock tilesize -int 52
defaults write com.apple.dock minimize-to-application -int 1
defaults write com.apple.dock magnification -int 0
defaults write com.apple.dock mineffect -string scale
defaults write com.apple.finder AppleShowAllFiles -int 0
defaults write com.apple.finder FXEnableExtensionChangeWarning -int 0
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 0
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 0
defaults write com.apple.finder ShowPathbar -int 1
defaults write com.apple.Finder _FXSortFoldersFirst -int 1
defaults write com.apple.Finder ShowRemovableMediaOnDesktop -int 0
defaults write NSGlobalDomain AppleAccentColor -int 6
defaults write NSGlobalDomain AppleShowAllExtensions -int 0
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain _HIHideMenuBar -int 1
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -int 0
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -int 0
defaults write NSGlobalDomain NSAutomaticInlinePredictionEnabled -int 0
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -int 0
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -int 0
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -int 0
defaults write com.apple.safari IncludeDevelopMenu -int 1
defaults write com.apple.safari AlwaysRestoreSessionAtLaunch -int 1

echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai

sudo yabai --load-sa

echo "Restarting docker finder and ui"
killall Dock
killall Finder
killall SystemUIServer

brew services start sketchybar
yabai --start-service
skhd --start-service
