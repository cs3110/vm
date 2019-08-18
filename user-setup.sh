# Install OPAM
opam init -a -y --bare
opam switch create 4.08.1
eval $(opam env)

# Install OPAM packages
opam install -y utop ounit qtest yojson lwt lwt_ppx menhir ansiterminal lambda-term merlin ocp-indent user-setup bisect_ppx-ocamlbuild graphics
opam user-setup install

