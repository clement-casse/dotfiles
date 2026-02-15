#!/bin/bash

set -eufo pipefail

trap 'killall Finder' EXIT

defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

defaults write com.apple.finder FXPreferredViewStyle -string clmv
defaults write com.apple.finder _FXSortFoldersFirst -int 1
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -int 1
defaults write com.apple.finder ShowPathbar -int 1
defaults write com.apple.finder ShowStatusBar -int 0
defaults write com.apple.finder AppleShowAllFiles -int 0
defaults write com.apple.finder FXRemoveOldTrashItems -int 1

defaults write com.apple.finder ShowHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowRemovableMediaOnDesktop -int 1
defaults write com.apple.finder ShowMountedServersOnDesktop -int 1

defaults write com.apple.desktopservices DSDontWriteNetworkStores -int 1
defaults write com.apple.desktopservices DSDontWriteUSBStores -int 1
