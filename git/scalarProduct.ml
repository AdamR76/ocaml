let rec zipWith f xs ys = 
  match (xs, ys) with
  | ([], _) | (_, []) -> []
  | (x :: xs', y :: ys') ->  f x y :: zipWith f xs' ys'


let scalarProduct lst1 lst2 = 
  let multiply  = fun a b -> a *. b in
  let rec zipWith f xs ys = 
    match (xs, ys) with
    | ([], _) | (_, []) -> []
    | (x :: xs', y :: ys') ->  f x y :: zipWith f xs' ys' in
  zipWith multiply lst1 lst2 |> List.fold_left (+.) 0.0



let res = scalarProduct [1.3;2.2;3.9] [2.2;5.5;8.8];;

Printf.printf "%.2f\n" res









