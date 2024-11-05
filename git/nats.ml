type 'a stream = Cons of 'a * 'a stream Lazy.t

let rec nats_from start = 
  Cons (start, lazy (nats_from (start+1)))

let nats = nats_from 0

let rec take n (Cons (x, xs)) = 
  if n <= 0 then []
  else x :: take (n-1) (Lazy.force xs)

let result = take 8 nats;;

Printf.printf "numbers -> [%s]\n" (String.concat "; " (List.map string_of_int result));;