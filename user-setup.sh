# Install OPAM
opam init -a -y --comp 4.05.0
eval `opam config env`

# Install OPAM packages 
opam install -y utop ounit qtest yojson lwt menhir ansiterminal lambda-term merlin ocp-indent user-setup
opam user-setup install

# Install Atom packages
apm install language-ocaml ocaml-merlin ocaml-indent linter

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
gsettings set com.canonical.Unity.Launcher favorites "['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'application://gnome-terminal.desktop', 'application://atom.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"

# Change some locking settings that aren't necessary inside the VM
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
