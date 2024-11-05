let rec zipWith f xs ys = 
  match (xs, ys) with
  | ([], _) | (_, []) -> []
  | (x :: xs', y :: ys') ->  f x y :: zipWith f xs' ys'

let eql xs ys = 
  let condition x y = x = y in
  let zipped = zipWith condition xs ys in
  let lengths_equal = List.length xs == List.length ys in
  lengths_equal && List.fold_left (&&) true zipped


let lst1 = [1;2;3;4;5];;
let lst2 = [1;2;3;4;5];;
let lst3 = [1;2;3;4;6];;

let res1 = eql lst1 lst2;;
let res2 = eql lst1 lst3;;

Printf.printf "Equal: %b\n" res1;
Printf.printf "Equal: %b\n" res2;