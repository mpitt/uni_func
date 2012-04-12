let string_of_char c =
  String.make 1 c;;

let rec countremove s c =
  match s with
      "" -> (0, "")
    | _  -> let (k,t) = countremove (String.sub s 1 (String.length s - 1)) c in
        if s.[0] = c then (k+1, t) else (k, (string_of_char s.[0])^t)
;;
