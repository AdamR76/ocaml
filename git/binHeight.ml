type 'a binary_tree = 
| Empty
| Node of 'a * 'a binary_tree * 'a binary_tree


let rec binHeight tree = 
  match tree with
  | Empty -> -1
  | Node (_, left, right) -> 1 + max (binHeight left) (binHeight right) 



let example_tree = 
  Node (1, 
  Node (2, 
    Node (3, Empty, Empty), 
    Node (4, Empty, Empty)), 
  Node (5, Empty, Node (8, Empty, Node (10, Empty, Node(11, Empty, Empty)))))

  let binTreeHeight = binHeight example_tree;;


  Printf.printf "Height: %d\n" binTreeHeight