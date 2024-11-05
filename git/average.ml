let average lst = 
	let sum = List.fold_left (+) 0 lst in
	let count = List.length lst in
	float_of_int sum /. float_of_int count


let nums = [1;2;3];;
let avg = average nums;;

Printf.printf "Average: %.2f\n" avg