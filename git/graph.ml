type vertex = { id: int; neighbors: int list; }

type graph = vertex list

let createVertex id = { id; neighbors = [] }

let addVertex graph id = 
  let newVertex = createVertex id in
  graph @ [newVertex]

let addEdge graph id1 id2 = 
  let rec addNeighbor v id neighborId = 
    match v with
    | [] -> []
    | hd :: tl -> 
      if hd.id = id then { hd with neighbors = neighborId :: hd.neighbors } :: tl
      else hd :: addNeighbor tl id neighborId
  in
  let updatedGraph = addNeighbor graph id1 id2 in
  let updatedGraph' = addNeighbor updatedGraph id2 id1 in
  updatedGraph'

  