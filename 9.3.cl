;Write a recursive function DRAW-BOX that calls DRAW-LINe
;repeatedly to draw a box of specified dimensions. (DRAW-BOX 10 4)
;should produce
;**********
;**********
;**********
;**********

(defun DRAW-LINE(n)
  (format t "*")
  (AND (> n 1) (draw-line (1- n)))
  )

(defun DRAW-BOX (lgth lines)
  (format t "~&")
  (draw-line lgth)
  (AND (> lines 1) (draw-box lgth (1- lines)))
  )

(draw-box 10 4)
