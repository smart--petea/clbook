;Use single-test tail recursion to write LAST-ELEMENT, a function that
;returns the last element of a list. LAST-ELEMENT should recursively
;travel down the list until it reaches the last cons cell (a cell whose cdr is
;an atom); then it should return the car of this cell
(defun last-element(x)
  (let
    ((cdrx (cdr x)))
    (cond
        ((not (atom cdrx)) (last-element cdrx))
        (t (car x))
        )
    )
  )

(print (last-element '(a b c)))
