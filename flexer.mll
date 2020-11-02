{
	open Fparser
    exception Eof
}
rule token = parse
  [' ' '\t']     { token lexbuf }
| ['0'-'9']+ as lxm { INT(int_of_string lxm) }
| '+'            { PLUS }
| '\n'           { NEWLINE }
| eof            { raise Eof }