type 'a binary_tree = 
| Empty
| Node of 'a * 'a binary_tree * 'a binary_tree

let rec isomorphic tree1 tree2 = 
  match (tree1, tree2) with
  | (Empty, Empty) -> true
  | (Node (value1, left1, right1), Node (value2, left2, right2)) -> 
    (value1 == value2) && ((isomorphic left1 left2 && isomorphic right1 right2) || 
    (isomorphic left1 right2 && isomorphic right1 left2))
  | _ -> false



let example_tree1 = 
  Node (1,
  Node (2, Empty, Empty),
  Node (3, Empty, Empty) 
  )

let example_tree2 = 
  Node (1,
  Node (4, Empty, Empty),
  Node (2, Empty, Empty) 
  )


let result = isomorphic example_tree1 example_tree2;;

Printf.printf "%b\n" result