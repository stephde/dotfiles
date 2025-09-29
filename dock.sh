#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/finder"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/System Preferences.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/iTerm.app"
# dockutil --no-restart --add "/Applications/Visual Studio Code.app"
# dockutil --no-restart --add "/Applications/Activity Monitor.app"
# dockutil --no-restart --add "/Applications/Bitwarden.app"

killall Dock
