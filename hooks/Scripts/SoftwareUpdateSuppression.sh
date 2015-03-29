#!/bin/sh
# Disables Apple Software Update Checks
# 3/29/15 updated for 10.9 & 10.10 to allow Xprotect and Gatekeeper installs.
# 1.0 - Disables Apple Updates entirely
# 2.0 - Enables Xprotect and Gatekeeper

# When running as a LoginHook DO NOT run as $1 or the local user.
# This needs to be run as root.

# softwareupdate --schedule off

#Enables software updates to run.
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool TRUE

#Enables Security updates marked as Critical by Apple. Needs the AutomaticCheckEnabled to be TRUE
defaults write /Library/Preferences/com.apple.SoftwareUpdate CriticalUpdateInstall -bool TRUE

#Enables Xprotect and Gatekeeper.  Needs the AutomaticCheckEnabled to be TRUE
defaults write /Library/Preferences/com.apple.SoftwareUpdate ConfigDataInstall -bool TRUE

exit 0