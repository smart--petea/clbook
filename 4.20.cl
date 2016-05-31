;Write a version of the COMPARE function using IF instead of COND.
;Also write a version using AND and OR
(defun compare-or (x y)
  (or
    (and 
      (equal x y)
      'numbers-are-the-same
      )
    (and
      (< x y)
      'first-is-smaller
      )
    (and
      (> x y)
      'fist-is-bigger
      )
    )
  )


(defun compare-if (x y)
  (if 
    (equal x y) 
     'numbers-are-the-same
     (if 
       (< x y)
       'first-is-smaller
       (if
         (> x y)
         'first-is-bigger
         )
       )
     )
  )

(print (compare-or 4 4))
(print (compare-or 5 4))
(print (compare-or 4 5))

(print (compare-if 4 4))
(print (compare-if 5 4))
(print (compare-if 4 5))
