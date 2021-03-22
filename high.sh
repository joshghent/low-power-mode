#!/bin/bash

# Re-enable updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -boolean TRUE

# Enable brew updates
export HOMEBREW_NO_AUTO_UPDATE=0
export HOMEBREW_NO_ANALYTICS=0

# Enable bluetooth
blueutil -p 1
