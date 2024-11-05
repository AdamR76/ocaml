let firstWord s = 
  let words = String.split_on_char ' ' s 
  |> List.filter (fun word -> String.length word > 0) in
  match words with
  | [] -> ""
  | first :: _ -> first




let inputStr = " Good morning I say";;
let res = firstWord inputStr;;

print_endline res
