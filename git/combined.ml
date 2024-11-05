let combined (lst : int list) (fns : (int -> int) list) : int list list =
  List.map (fun f -> List.map f lst) fns
  
  


let input_list = [1;2;3]
let f = [(fun x -> x + 1); (fun x -> x * 2); (fun x -> x * x);]


let res = combined input_list f;;

Printf.printf "[[%s]]\n"
  (String.concat "], [" (List.map (fun lst -> String.concat "; " (List.map string_of_int lst)) res))
