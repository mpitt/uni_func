let string_of_char c =
  String.make 1 c;;

let rec countremove s c =
  match s with
      "" -> ("", 0)
    | _  -> let (t,k) = countremove (String.sub s 1 (String.length s - 1)) c in
        if s.[0] = c then (t, k+1) else ((string_of_char s.[0])^t, k)
;;

let rec alloccurences s =
  match s with
      "" -> ""
    | _  -> let (t,k) = countremove s s.[0] in
        "("^(string_of_char s.[0])^", "^(string_of_int k)^");  "^alloccurences t
;;

