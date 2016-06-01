;Consider the NOR function (shor for Not OR). Can you write versions
;of NOT, LOGICAL-AND, NAND, and LOGICAL-OR by putting 
;NORs together
(defun nor (x y)
  (not (or x y))
  )

(defun not2(x)
  (nor x x)
  )

(defun nand(x y)
  (nor
    (nor (nor x x) (nor y y))
    (nor (nor x x) (nor y y))
    )
  )

(defun logical-and(x y)
  (nor (nor x x) (nor y y))
  )

(defun logical-or (x y)
  (nor
    (nor x y)
    (nor x y)
    )
  )


;(print (logical-and t nil))
;(print (logical-and t t))
;(print (logical-and nil nil))

;(print (nand nil nil))
;(print (nand nil t))
;(print (nand t nil))
;(print (nand t t))

(print (logical-or nil nil))
(print (logical-or nil t))
(print (logical-or t nil))
(print (logical-or t t))

