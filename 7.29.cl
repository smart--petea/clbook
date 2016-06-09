;If the blocks database is already stored on the computer for you, load
;teh file containing it. If not, you will have to type it in as it appears in
;Figure 7-3. Save the database in the global variable DATABASE
(setf database 
      '(
        (b1 shape brick)
        (b1 color green)
        (b1 size small)
        (b1 supported-by b2)
        (b1 supported-by b3)
        (b2 shape brick)
        (b2 color red)
        (b2 size small)
        (b2 supports b1)
        (b2 left-of b3)
        (b3 shape brick)
        (b3 color red)
        (b3 size small)
        (b3 supports b1)
        (b3 right-of b2)
        (b4 shape pyramid)
        (b4 color blue)
        (b4 size large)
        (b4 supported-by b5)
        (b5 shape cube)
        (b5 color green)
        (b5 size large)
        (b5 supports b4)
        (b6 shape brick)
        (b6 color purple)
        (b6 size large)
        )
      )
;a.
;Write a function MATCH-ELEMENT that takes two symbols as
;inputs. If the two are equal, ir if the second is a question mark,
;MATCH-ELEMENT should return T. Otherwise it should return
;NIL. Thus (MATCH-ELEMENT 'RED 'RED) and (MATCH-ELEMENT 'RED '?)
;should return T, but (MATCH-ELEMENT 'RED 'BLUE) should return NIL. Make
;sure your function works
;correctly before proceeding further
(defun match-element(smbl1 smbl2)
  (OR (eq smbl2 '?) (eq smbl1 smbl2))
  )

;(print (match-element 'red 'red))
;(print (match-element 'red '?))
;(print (match-element 'red 'blue))

;b. 
;Write a function MATCH-TRIPLE that takes an assertion and a
;pattern as input, and returns T if the assertion matches the pattern.
;Both inputs will be three-element lists. (MATCH-TRIPLE '(B2 COLOR RED) 
;'(B2 COLOR ?)) should return T. (MATCH-TRIPLE '(B2 COLOR RED) '(B1 COLOR GREEN))
;shuld return NIL. Hint: Use MATCH-ELEMENT as a building block
(defun match-triple(asrt ptrn)
  (every
    #'match-element
    asrt
    ptrn
    )
  )

;(print (match-triple '(B2 COLOR RED) '(B2 COLOR ?)))
;(print (match-triple '(B2 COLOR RED) '(B2 COLOR GREEN)))

;c.
;Write a function FETCH that takes a pattern as input and returns
;all assertions in the database that match the pattern. Remember that
;DATABASE is a global variable. (FETCH '(B2 COLOR ?))
;should return ((B2 COLOR RED)), and (FETCH '(? SUPPORTS B1)) 
;should return ((B2 SUPPORTS B1) (B3 SUPPORTS B1)).
(defun fetch(ptrn)
  (remove-if-not
    #'(lambda(e)
        (match-triple e ptrn)
        )
    database
    )
  )

;(print (fetch '(B2 COLOR ?)))
;(print (fetch '(? SUPPORTS B1)))
