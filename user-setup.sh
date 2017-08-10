# Install OPAM
opam init -a -y --comp 4.05.0
eval `opam config env`

# Install OPAM packages 
opam install -y utop ounit qtest yojson lwt menhir ansiterminal lambda-term merlin ocp-indent user-setup
opam user-setup install

# Install Atom packages
apm install language-ocaml ocaml-merlin ocaml-indent linter linter-ui-default intentions busy-signal

