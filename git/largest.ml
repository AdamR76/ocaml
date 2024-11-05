let largest lst = List.map (fun x -> List.fold_left max 0 x) lst
;;