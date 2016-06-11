;Write a function that, given a list of lists, returns the total length of all
;the lists. This problem can be solved two different ways.
(print (reduce #'(lambda(x y) (+ (length x) (length y))) '((one un))))
