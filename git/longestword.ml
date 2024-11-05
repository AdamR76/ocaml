let longestWord sent = String.split_on_char ' ' sent |> List.map String.length |> List.fold_left max 0


let sentence = "The quick brown fox jumped over the lazy dog";;
let result = longestWord sentence;;


Printf.printf "%d\n" result
