type 'a binary_tree = 
| Empty
| Node 'a * 'a binary_tree * 'a binary_tree


let example_tree = 
  Node (1, 
  Node (2, 
    Node (3, Empty, Empty), 
    Node (4, Empty, Empty)), 
  Node (5, Empty, Empty))