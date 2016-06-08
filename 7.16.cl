;Suppose we had a list of sets ((A B C) (C D A) (F B D) (G)) that we
;wanted to collapse into one big set. If we use APPEND for our
;reducing function, the result won't be a true set, because some elements
;will appear more than once. What reducing unction should be used instead
(print (reduce #'union '((A B C)(C D A)(F B D)(G))))
