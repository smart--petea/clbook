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

;d.
;Use FETCH with patterns you construct yourself to answer the
;following questions. What shape is block B4?
(print (fetch '(B4 SHAPE ?)))
;Which blocks are bricks
(print (fetch '(? SHAPE BRICK)))
;What relation is block B2 to block B3?
(print (fetch '(B2 ? B3)))
;List the color of every block.
(print (fetch '(? COLOR ?)))
;What facts are known about block B4?
(print (fetch '(B4 ? ?)))


;e.
;Write a function that takes a block name as input and returns a
;pattern asking the color of the block. For example, given the input
;B3, your function should return the list (B3 COLOR ?)
(defun color-pattern(block-name)
  (list block-name 'color '?)
  )

;(print (color-pattern 'b3))

;f.
;Write a function SUPPORTERS that takes one input, a block, and
;returns a list of the blocks that support it. (SUPPORTERS 'B1)
;should return the list (B2 B3). Your function should work by
;constructin a pattern containing the block's name, using that
;pattern as input to FETCH, and then extracting the block names
;from the resulting list of assertions
(defun supporters(block-name)
  (mapcar
    #'car
    (fetch 
        (list
            '?
            'supports
            block-name
            )
        )
    )
  )

;(print (supporters 'b1))

;g.
;Write a predicate SUPP-CUBE that takes a block as input and
;returns true if that block is supported by a cube. (SUPP-CUBE 'B4)
;should return a true value; (SUPP-CUBE 'B1) should not because
;B1 is supported by bricks but not cubes. Hint: Use the result of the
;SUPPORTERS function as a starting poing
(defun supp-cube(block-name)
  (not
    (not
        (find-if
            #'(lambda(e)
                (fetch 
                    (list
                        e
                        'shape
                        'cube
                    )
                )
            )
            (supporters block-name)
            )
        )
    )
  )

;(print (supp-cube 'b4))
;(print (supp-cube 'b1))

;h.
;We are going to write a DESCRIPTION function that returns the
;description of a block. (DESCRIPTION 'B2) will return (SHAPE
;BRICK COLOR RED SIZE SMALL SUPPORTS B1 LEFT-OF B3). We will do this in steps. 
;First, write a function DESC1 that
;takes a block as input and returns all assertions dealing with that
;block. (DESC1 'B6) shoul return ((B6 SHAPE BRICK) (B6 COLOR PURPLE) (B6 SIZE LARGE)).
(defun desc1(block-name)
  (fetch 
    (list
      block-name
      '?
      '?
      )
    )
  )

;(print (desc1 'b6))

;i.
;Write a function DESC6 of one input that calls DESC1 and strips
;the block name off each element of the result. (DESC2 'B6) should
;return the list ((SHAPE BRICK) (COOLOR PURPLE) (SIZE LARGE)).
(defun desc2(block-name)
  (mapcar
    #'cdr
    (desc1 block-name)
    )
  )

;(print (desc2 'b6))

;j.
;Write the DESCRIPTION function. It should take one input, call
;DESC2, and merge the resulting list of lists into a single list.
;(DESCRIPTION 'B6) should return (SHAPE BRICK COLOR PURPLE SIZE LARGE).
(defun description(block-name)
  (reduce
    #'append
    (desc2 block-name)
    )
  )
;(print (description 'b2))

;k.
;What is the description of block B1? Of block B4?
(print (description 'b1))
(print (description 'b4))

;l.
;Block B1 is made of wood, but block B2 is made of plastic. How
;would you add this information to the database?
(setf database (append database '((b1 material plastic)) '((b2 material wood))))
(print database)
