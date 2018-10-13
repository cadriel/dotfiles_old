#!/usr/bin/env bash

# ~/.macos — https://mths.be/macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "LdrSnoke"
sudo scutil --set HostName "LdrSnoke"
sudo scutil --set LocalHostName "LdrSnoke"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "LdrSnoke"

echo "Done. Note that some of these changes require a logout/restart to take effect."
