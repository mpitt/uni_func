let rec map f l =
  match l with
      []   -> []
    | x::r -> (f x)::(map f r)
;;
