# Install OPAM
opam init -a -y --bare
opam switch create cs3110-2020fa ocaml-base-compiler.4.10.0
eval $(opam env)

# Install OPAM packages
opam install -y utop ounit qtest yojson csv lwt lwt_ppx menhir ansiterminal lambda-term merlin ocp-indent user-setup bisect_ppx-ocamlbuild graphics
opam user-setup install

