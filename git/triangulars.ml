type 'a stream = Cons of 'a * 'a stream Lazy.t

let rec iterate f x = Cons (x, lazy (iterate f (f x)))

let rec scanl f acc stream = 
  match stream with
  | Cons (x, xs) -> 
  let new_acc = f acc x in
  Cons (new_acc, lazy (scanl f new_acc (Lazy.force xs)))

let triangulars = 
  scanl (+) 0 (iterate ((+) 1) 1)

let rec take n (Cons (x, xs)) = 
  if n <= 0 then []
  else x :: take (n-1) (Lazy.force xs)


let result = take 10 triangulars;;

Printf.printf "numbers -> [%s]\n" (String.concat "; " (List.map string_of_int result));;