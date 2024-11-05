let count sub x = List.length (List.filter (fun n -> n == x) sub)

let countIn lst x = 
  List.map (fun sub -> count sub x) lst

let res = countIn [[3;3;2]; [3]; []; [2;2]] 3;;

List.iter (fun n -> Printf.printf "%d " n) res;
print_newline()