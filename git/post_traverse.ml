type 'a binary_tree = 
| Empty
| Node of 'a * 'a binary_tree * 'a binary_tree


let rec post_traverse tree = 
  match tree with 
  | Empty -> []
  | Node (value, left, right) -> 
    let left_post = post_traverse left in
    let right_post = post_traverse right in
    left_post @ right_post @ [value]

let tree = 
  Node (1,
    Node (2,
      Node (4, Empty, Empty),
      Node (5, Empty, Empty)
    ),
    Node(3, 
      Node (6, Empty, Empty),
      Node (7, Empty, Empty)
    )
  )


  let result = post_traverse tree;;

  Printf.printf "Postorder traversal: %s\n" (String.concat ", "(List.map string_of_int result))