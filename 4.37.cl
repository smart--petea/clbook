;NAND is called a logically complete function because we can 
;construct all other boolean functions from various combinations of 
;NAND. For example, here is a version of NOT call NOT2
;constructed from NAND:
;(defun not2 (x) (nand x x))
;Construct versions of LOGICAL-AND and LOGICAL-OR by putting
;together NANDs. You will have to use more than one NAND in each case.

(defun not2 (x) (nand x x))

(defun nand(x y) (not (and x y)))

(defun logical-and (x y)
  (nand (nand x y) (nand x y))
  )

(defun logical-or (x y)
  (nand (nand x x) (nand y y))
  )


(print (logical-and 5 6))
(print (logical-and nil 6))
(print (logical-and 5 nil))

(print (logical-or 5 nil))
(print (logical-or nil 5))
(print (logical-or nil nil))
