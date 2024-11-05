type 'a binary_tree = 
| Empty
| Node of 'a * 'a binary_tree * 'a binary_tree




let rec minVal tree = 
  match tree with 
  | Empty -> None
  | Node (value, left, right) ->
    let left_tree = minVal left in
    let right_tree = minVal right in
    match (left_tree, right_tree) with
    | (None, None) -> Some value
    | (Some left_min, None) -> Some (min left_min value) 
    | (None, Some right_min) -> Some (min right_min value)
    | (Some left_min, Some right_min) -> Some (min (min left_min value) right_min)





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



let result = minVal tree;;

match result with 
| Some min_val -> Printf.printf "%d\n" min_val
| None -> Printf.printf "Empty tree\n"