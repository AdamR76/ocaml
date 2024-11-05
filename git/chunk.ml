let rec slicer st stp lst = 
  match lst with
  | [] -> []
  | h :: t -> 
     let tail = if stp = 1 then [] else slicer (st - 1) (stp - 1) t in
     if st > 0 then tail else h :: tail
;;
  
let rec chunker lst size = 
  match lst, size with
  | [], _ -> []
  | _, 0 -> []
  | lst, size -> 
    let listLength = List.length lst in
    let hd = slicer 0 size lst in
    let tl = slicer size listLength lst in
    [hd] @ chunker tl size;;