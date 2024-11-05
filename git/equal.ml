type 'a binary_tree = 
| Empty
| Node of 'a * 'a binary_tree * 'a binary_tree



let rec equal t1 t2 = 
  match (t1, t2) with
  | (Empty, Empty) -> true
  | (Node (value1, left1, right1), Node (value2, left2, right2)) ->
    value1 == value2 && equal left1 left2 && equal right1 right2
  | _ -> false



let example_tree1 = 
  Node (1, 
  Node (2, 
    Node (3, Empty, Empty), 
    Node (4, Empty, Empty)), 
  Node (5, Empty, Node (8, Empty, Node (10, Empty, Node(11, Empty, Empty)))))

  let example_tree2 = 
    Node (1, 
    Node (2, 
      Node (3, Empty, Empty), 
      Node (4, Empty, Empty)), 
    Node (2, Empty, Node (8, Empty, Node (10, Empty, Node(11, Empty, Empty)))))



let result = equal example_tree1 example_tree2;;


Printf.printf "%b\n" result