let single lst = 
  let rec findSingle lst acc =
    match lst with 
    | [] -> acc
    | h :: t -> 
      if List.exists (fun x -> x = h) lst then findSingle t acc else findSingle t (h::acc) in
  findSingle lst [];;
