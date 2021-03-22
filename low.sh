#!/bin/bash
#########################
# REQUIREMENTS

# Blueutil - for bluetooth controls - `brew install blueutil`
########################


# Pause photo sync
PHOTOS=$(ps auxw | grep iPhoto | grep -v grep | awk '{print $2}')
if [ -n $PHOTOS ]; then
    kill $PHOTOS
fi

# Pause spotlight index

# Stop updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -boolean FALSE

# Disable brew updates
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ANALYTICS=1

# Disable bluetooth
blueutil -p 0

# Kill docker
killall Docker

# Prompt to reduce the number of tabs
echo "Please attempt to reduce the number of tabs in Safari/Chrome"

# Kill display link driver
killall DisplayLinkUserAgent
