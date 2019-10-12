# Machine Setup
# Author: Phil Mayer
# Modified: 11/5/18


# Dock
defaults write com.apple.dock autohide -bool true && killall Dock

# Finder
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
# Globally show file extensions.
defaults write -g AppleShowAllExtensions -bool true
# Show user's Library folder.
chflags nohidden ~/Library
# Set default Finder location to the home folder.
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Mail
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes

# Networking
# Enable AirDrop over Ethernet and on Unsupported Macs
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
# Don't pollute network drives and USB volumes with .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Libraries
# Xcode: install command-line tools without installing full Xcode, remove all unavailable simulators.
xcode-select --install
xcrun simctl delete unavailable

brew install ack autojump git httpie inetutils nmap pkg-config postgresql ssh-copy-id tldr tree wget yarn

brew tap homebrew/cask
brew cask install docker firefox google-backup-and-sync google-chrome iterm2 spotify visual-studio-code vlc
