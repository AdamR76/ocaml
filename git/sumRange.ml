let sumRange lst = 
  let largest = List.fold_left max 0 lst in
  let smallest = List.fold_left min 5000 lst in
  Seq.ints smallest |> Seq.take largest |> List.of_seq |> List.fold_left (+) 0