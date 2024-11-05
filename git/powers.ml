let powers k = 
  let rec generate n count acc = 
    if count == k then List.rev acc
    else  generate (n * 2) (count + 1) (n :: acc) in
    generate 1 0 []

let k = 8;;
let first_powers = powers k;;



List.iter (fun n -> Printf.printf "%d " n) first_powers;;