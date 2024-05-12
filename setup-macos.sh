#!/usr/bin/env bash

echo "Configuring macOS"
if [[ "$(uname)" == "Darwin" ]]; then
  echo "show the ~/Library folder in Finder"
  chflags nohidden ~/Library

  echo "Show Path bar in Finder"
  defaults write com.apple.finder ShowPathbar -bool true

  echo "Show Status bar in Finder"
  defaults write com.apple.finder ShowStatusBar -bool true

  echo "Set a blazingly fast keyboard repeat rate"
  defaults write NSGlobalDomain KeyRepeat -int 1

  echo "Set a shorter Delay until key repeat"
  defaults write NSGlobalDomain InitialKeyRepeat -int 13

  echo "Enable tap to click (Trackpad)"
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

  echo "DS don't write"
  defaults write com.apple.desktopservices DSDontWriteNetworkStores True

  echo "Kill affected applications"

  for app in Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
else
  warning "macOS not detected. Skipping."
fi

echo -e
success "Done."
