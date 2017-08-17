# Install OPAM
opam init -a -y --comp 4.05.0
eval `opam config env`

# Install OPAM packages
opam install -y utop ounit qtest yojson lwt menhir ansiterminal lambda-term merlin ocp-indent user-setup
opam user-setup install

# Install Atom packages
apm install language-ocaml ocaml-merlin ocaml-indent linter linter-ui-default intentions busy-signal

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
