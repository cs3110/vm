# Install OPAM
opam init -a -y --comp 4.06.1
eval `opam config env`

# Install OPAM packages
opam install -y utop ounit qtest yojson lwt menhir ansiterminal lambda-term merlin ocp-indent user-setup coq coqide graphics
opam user-setup install

