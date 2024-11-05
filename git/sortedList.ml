let rec mergeTwo xs ys =
  match xs, ys with
  | [], _ -> ys
  | _, [] -> xs
  | hx :: txs, hy :: tys ->
      if hx < hy then hx :: mergeTwo txs ys else hy :: mergeTwo xs tys
