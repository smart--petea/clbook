;Some earlier Lisp dialect did not have the EVENP primitive; they only had ODDP; Show how to define EVENP in terms of
;ODDP
(defun evenpp (x)
  (not (oddp x))
)

(print (evenpp 4))
