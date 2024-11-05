let countIf cond lst = List.filter cond lst |> List.length


let test x = x > 5;;
let res = countIf test [1;2;3;4;5;6;7;8];;

Printf.printf "%d\n" res