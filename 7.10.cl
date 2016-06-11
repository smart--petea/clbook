;In this exercise we will write a program to transpose a song from one
;key to another. In order to manipulate notes more efficiently, we will
;translate them into numbers. Here is the correspondence between notes
;and numbers for a one-octave scale:
;C = 1
;C-SHARP = 2
;D = 3
;D-SHARP = 4
;E = 5
;F = 6
;F-SHARP = 7
;G = 8
;G-SHARP = 9
;A = 10
;A-SHARP = 11
;B = 12

;a.
;Write a table to represent this information. Store it in a global
;variable called NOTE-TABLE
(setf note-table '(
                   (c 1)
                   (c-sharp 2)
                   (d 3)
                   (d-sharp 4)
                   (e 5)
                   (f 6)
                   (g 8)
                   (g-sharp 9)
                   (a 10)
                   (a-sharp 11)
                   (b 12)
                   )
      )

;(print note-table)

;b.
;Write a function called NUMBERS that takes a  list of notes as input
;and returns the corresponding list of numbers. (NUMBERS '(E D C D E E E))
;should return (5 3 1 3 5 5 5). This list represents the first sevent nnotes
;of "Mary Had a Little Lamb"

(defun numbers(x)
  (mapcar #'(lambda (y)
              (second 
                (assoc
                  y
                  note-table
                  )
                )
              )
          x
          )
  )

;(print (numbers '(e d c d e e e)))

;c.
;Write a function called NOTES that takes a listo of numbers as input
;and returns the corresponding list of notes. (NOTES '(5 3 1 3 5 5 5))
;should return (E D C D E E E). Hint: Since NOTE-TABLE is keyed by note, ASSOC can't
;look up numbers in it; neither can RASSOC, since the elements are lists, not dotted pairs.
;Write your own table-searching function to search NOTE-TABLE by 
;number instead of by note

(defun bynumber(nmbr)
  (second
    (assoc
      nmbr
      (mapcar
        #'(lambda (x)
            (reverse x)
            )
        note-table
        )
      )
    )
  )
;(print (bynumber 3))
(defun notes(x)
  (mapcar #'bynumber x)
  )

;(print (notes '(5 3 1 3 5 5 5)))

;d.Notice that NOTES and NUBMERS are mutual iverses:
;For X a list of notes:
;     X = (NOTES (NUMBERS X))
;
;For X a list of numbers:
;     X = (NUMBERS (NOTES X))
;What can be said about (NOTES (NOTES X)) and (NUBMERS (NUMBERS X))?
;(print (notes (notes '(5 3 1 3 5 5 5))))

;e.
;To transpose a piece of music up by n half steps, we begin by addin
;the value n to each note in the piece. Write a function called RAISE 
;that takes a number n and a list of numbers as input and raises each
;number in the list by the value n. (RAISE 5 '(5 3 1 3 5 5 5)) should
;return (10 8 6 8 10 10 10), which is "Mary Had a Little Lamb"
;transposed five half steps from the key of C to the key of F
(defun raise (n x)
  (mapcar #'(lambda (y)
              (+ y n)
              )
          x
          )
  )

;(print (raise 5 '(5 3 1 3 5 5 5)))

;f.
;Sometimes when we raise the value of a note, we may raise it right
;into the next octave. For instance, if we raise the triad C-E-G
;represented by the list (1 5 8) into the key of F by addinf five to
;each note we get (6 10 13) of E-A-C. Here the C note, represented
;by the number 13, is an octave above the regular C, represented by 1.
;Write a function called NORMALIZE that takes a list of numbers
;as input and "normalizes" them to make them be between 1 and 12.
;A number greater than 12 shul have 12 substracted from it; a number
;less than 1 should have added to it. (NORMALIZE '(6 10 10))
;should return (6 10 1)
(defun normalize (x)
  (mapcar #'(lambda(y)
              (cond
                ((> y 12) (- y 12))
                ((< y 1) (+ y 12))
                (t y)
                )
              )
          x
          )
  )

;(print (normalize '(6 10 13)))

;g.
;Write a function TRANSPOSE that takes a number n and a song as
;input, and returns the song transposed by n half steps.
;(TRANSPOSE 5 '(E D C D E E E)) should return (A G F G A A A).
;Your solution should assume the availibility of the NUMBERS,
;NOTES, RAISE, and NORMALIZE functions. Try transposing
;"Mary Had a Little Lamb" up by 11 half steps. What happens if
;you transpose it by 12 half steps? How about - 1 half steps
(defun transpose(n song)
  (notes
    (normalize
      (raise  
        n
        (numbers song)
        )
      )
    )
  )

(print (transpose 5 '(E D C E E E)))


