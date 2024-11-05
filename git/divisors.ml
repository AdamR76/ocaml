include List;;

let rec list_less_than x acc = if x < 2 then acc else list_less_than (x - 1) ((x - 1) :: acc);;

let isDivisible n d = n / d * d == n;;

let get_divisors x = list_less_than x [] |> List.filter (isDivisible x) 