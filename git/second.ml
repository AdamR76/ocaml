let rec penultimate lst = 
  match lst with 
  | [] -> failwith "Empty List"
  | [_] -> failwith "Only one Element"
  | [x; _] -> x
  | _ :: tail -> penultimate tail 



let nums = penultimate [1;2;3;4;5;6];;
let words = penultimate ["hello";];;
let empty = penultimate [];;

Printf.printf "%s\n" empty