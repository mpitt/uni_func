let rec zip l1 l2 =
  match (l1,l2) with
      x::r,y::s -> (x,y)::(zip r s)
    | _,_       -> []
;;
