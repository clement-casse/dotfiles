#!/bin/bash

set -eufo pipefail

trap 'killall Finder' EXIT

defaults write com.apple.finder FXPreferredViewStyle -string clmv
defaults write com.apple.finder _FXSortFoldersFirst -int 1
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -int 1
defaults write com.apple.finder ShowPathbar -int 1
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 1