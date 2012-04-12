let rec countchar s c =
  match String.length s with
      0 -> 0
    | n -> (if (s.[0] = c) then 1 else 0) +
           countchar (String.sub s 1 (n-1)) c
;;

print_string (string_of_int (countchar "pippo" 'p'));;
