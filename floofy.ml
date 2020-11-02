let _ = 
  try
    if Array.length Sys.argv < 2 then (
      print_endline "Bork, give more file.";
      exit 1
    ) else (
      if Array.length Sys.argv > 2 then (
        print_endline "Bork, give less file.";
        exit 1
      ) else ( 
        let x = open_in Sys.argv.(1) in 
        let lexbuf = Lexing.from_channel x in
        while true do
          let result = Fparser.main Flexer.token lexbuf in
          print_int result; print_newline(); flush stdout
        done
      )
    );
  with Flexer.Eof ->
    exit 0
