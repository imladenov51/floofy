%token <int> INT
%token PLUS
%token NEWLINE
%start main
%type <int> main
%%
main:
  expr NEWLINE  { $1 }
;
expr:
  INT           { $1 }
| INT PLUS expr { $1 + $3 }
;
