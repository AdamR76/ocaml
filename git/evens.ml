let evens lst = List.filter (fun x -> x mod 2 == 0) lst |> List.fold_left ( * ) 1


let res = evens [1;2;3;4;5;6;7;8];;


Printf.printf "%d\n" res