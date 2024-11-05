let rec slicer st stp lst = 
  match lst with
  | [] -> []
  | h :: t -> 
     let tail = if stp = 1 then [] else slicer (st - 1) (stp - 1) t in
     if st > 0 then tail else h :: tail
;;

let rec topK lst n cnt = 
  match lst, n with
  | [], _ -> []
  | _, 0 -> []
  | hd::tl, _ ->
    if List.mem hd then  
