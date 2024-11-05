(* print_string "adventure";
print_string "island";
print_endline "sea";
print_int 8;
print_endline "end"; *)


(* %F\n formatting float numbers %s is string  %! flushing input data*)
(* let print_stat name num = Printf.printf "%s: %F\n%!" name num; *)



let user_number = read_int() in
Printf.printf "You entered a number: %d\n" user_number;
print_endline "Now enter text";
let user_input = read_line() in
Printf.printf "You entered: %s\n" user_input