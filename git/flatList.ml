let rec flatten lst = 
  match lst with
  | [] -> []
  | h :: t -> h @ flatten t




let result = flatten [[1;2]; [3;4]; []; [5;6]];;

List.iter (fun n -> Printf.printf "%d " n) result;;