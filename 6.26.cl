;We are going to write a program that compares the descriptions of two
;objects and tells how many features they have in common. The
;descriptions will be resented as a list of features, with the symbol
;-VS- separating the first object from the second Thus, when given a list like
;(large red shiny cube -vs- small shiny red four-sided pyramid)
;the program will respond with (2 COMMON FEATURES). We will
;compose this program from several small functions that you will write
;and test one at a time

;a.
;Write a function RIGHT-SIDE that returns all the features to the
;right of the -VS- symbol. RIGHT-SIDE of the list shown above should
;return (SMALL SHINY RED FOUR-SIDED PYRAMID).
;Hint: remember that the MEMBER function returns the entire
;sublist starting with the item for which you are searching. Test your function to 
;make sure it works correctly.
(defun right-side(x)
  (cdr (member '-vs- x) )
  )

;(print (right-side '(large red shiny cube -vs- small shiny red four-sided pyramid)))

;b.
;Write a function LEFT-SIDE that returns all the features to the left
;of the -VS-. You can't use the mbember trick directly for this one,
;but you can use it if you do something to the list first
(defun left-side(x)
  (right-side (reverse x))
  )

;(print (left-side '(large red shiny cube -vs- small shiny red four-sided pyramid)))

;c.
;Write a function COUNT-COMMON that returns the number of
;features the left and right sides of the input have in common
(defun count-common(x)
  (length
    (intersection
      (right-side x)
      (left-side x)
      )
    )
  )


;(print (count-common '(large red shiny cube -vs- small shiny red four-sided pyramid)))

;d.
;Write the main function, COMPARE, that takes a list of features
;describing two objects, with a -VS- between them, and reports the number
;of features the have in common. COMPARE should return
;a list of form (n COMMON FEATURES
(defun compare(x)
  (list (count-common x) 'common 'features)
  )


(print (compare '(small red metal cube -vs- small red plastic small cube)))
