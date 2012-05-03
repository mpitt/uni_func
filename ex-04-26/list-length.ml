let rec list_length l =
  match l with
      [] -> 0
    | x::rest  -> 1 + (list_length rest)
;;
