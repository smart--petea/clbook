;In this exercise you will create a discrimination net for automotive
;diagnosis that mimics the behavior of the system shown in the
;preceding pages.

;a.
;Writ a DEFSTRUCT for a structure called NODE, with four
;components called NAME, QUESTION, YES-CASE, and 
;NO-CASE.
(defstruct node 
                 name
                 question
                 yes-case
                 no-case
  )

;(setf nd (make-node))
;(print nd);
