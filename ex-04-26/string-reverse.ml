let string_of_char c = String.make 1 c;;

let reverse s =
  let rec aux s acc =
    match s with
        "" -> acc
      | _  -> let rlen = String.length(s) in
                aux (String.sub s 1 (rlen-2))  acc^(string_of_char s.[rlen-1])
  in aux s ""
;;
