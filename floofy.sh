ocamllex flexer.mll
ocamlyacc fparser.mly
ocamlc -c fparser.mli
ocamlc -c flexer.ml
ocamlc -c fparser.ml
ocamlc -c floofy.ml
ocamlc -o floofy flexer.cmo fparser.cmo floofy.cmo