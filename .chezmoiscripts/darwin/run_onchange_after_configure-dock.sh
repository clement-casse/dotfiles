#!/bin/bash

set -eufo pipefail

trap 'killall Dock' EXIT

defaults write com.apple.dock autohide -int 0
defaults write com.apple.dock orientation -string bottom
defaults write com.apple.dock show-recents -int 0

declare -a remove_labels=(
	Safari
	Maps
	FaceTime
	Contacts
	Reminders
	Notes
	Freeform
	TV
	Keynote
	Numbers
	Pages
	"App Store"
)

for label in "${remove_labels[@]}"; do
	dockutil --no-restart --remove "${label}" || true
done