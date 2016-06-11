;Write an expression to apply the ZEROP predicate to each element of
;the list (2 0 3 4 0 -5 -6). The answer you get should be a list of Ts and
;NILs
(print (mapcar #'zerop '(2 0 3 4 0 -5 -6)))
