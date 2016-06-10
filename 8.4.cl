;We are going to write a function called LAUGH that takes a number as
;input and returns a list of that many HAs. (LAUGH 3) should return the
;list (HA HA HA). (LAUGH 0) should return a list with no HAs in
;it, or, as the dragon might put it, "the empty laugh"
(defun laugh (x)
  (cond
     ((zerop x) nil)
     (t 
       (cons
         'HA
         (laugh (1- x))
         )
       )
    )
  )

(print (laugh 3))
(print (laugh 0))

