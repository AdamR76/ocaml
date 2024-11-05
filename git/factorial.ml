let rec factorial num = 
	if num = 1 then 1 
	else num * factorial (num-1)

(* let rec exp x y = 
	if y = 0 then 1
	else x * exp x (y - 1) *)


(* let addx x = fun y -> x + y; *)