type 'a stream = Cons of 'a * 'a stream Lazy.t

let rec take n (Cons (x, xs)) = 
  if n <= 0 then []
  else x :: take (n-1) (Lazy.force xs)


let factorials = 
  let rec factorial_seq n acc = 
    Cons (acc, lazy (factorial_seq (n + 1) (acc*(n+1))))
  in
  factorial_seq 0 1


let result = take 10 factorials;;


Printf.printf "numbers -> [%s]\n" (String.concat "; " (List.map string_of_int result));;