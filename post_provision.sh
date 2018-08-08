# Change the launcher icons
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'chromium-browser.desktop', 'code.desktop']"

# Change some locking settings
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
gsettings set org.gnome.desktop.session idle-delay "uint32 0"

# Set desktop wallpaper
gsettings set org.gnome.desktop.background picture-uri 'file:///home/vagrant/Pictures/caravan.jpg'

# Improve shell history
cat <<EOF >> ~/.inputrc
## arrow up
"\e[A":history-search-backward
## arrow down
"\e[B":history-search-forward
EOF

# Install VS Code extensions
code --install-extension freebroccolo.reasonml
code --install-extension siegebell.vscoq
