# Change the launcher icons
gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'application://gnome-terminal.desktop', 'application://atom.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"

# Change some locking settings
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false

# Set desktop wallpaper
wget https://github.com/cs3110/vm/blob/master/caravan.jpg?raw=true -O ~/Pictures/caravan.jpg
gsettings set org.gnome.desktop.background picture-uri 'file:///home/vagrant/Pictures/caravan.jpg'

# Improve shell history
cat <<EOF >> ~/.inputrc
## arrow up
"\e[A":history-search-backward
## arrow down
"\e[B":history-search-forward
EOF

