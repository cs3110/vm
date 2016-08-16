# Install OPAM
opam init -a -y --comp 4.03.0
eval `opam config env`

# Install packages 
opam install -y utop ounit qcheck yojson lwt menhir

# Configure sublime
mkdir -p $HOME/.config/sublime-text-3/Packages/User
cat <<EOF > $HOME/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
{
    "tab_size": 2,
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true,
    "rulers": [80]
}
EOF

# Change the launcher icons
dbus-launch gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'application://gnome-terminal.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'application://gnome-terminal.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"