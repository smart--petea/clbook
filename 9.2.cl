;Write a recursive function DRAW-LINE that draws a line of a specified
;length by doing (FORMAT T "*") the correct number of times.
;(DRAW-LINE 10) should produce
; **********
(defun draw-line(n)
  (format t "*")
  (AND (> n 1) (draw-line (1- n)))
  )

(draw-line 10)
