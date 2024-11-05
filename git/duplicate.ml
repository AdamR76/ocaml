let rec print_list lst = 
  match lst with
  | [] -> ()
  | [x] -> Printf.printf "%d" x
  | x :: xs -> Printf.printf "%d; " x; print_list xs


let rec duplicate lst = 
  match lst with
  | [] -> []
  | head :: tail -> head::head::duplicate tail

let numbers = [1;2;3];;

let result = duplicate numbers;;

print_list result;;

Printf.printf "\n"