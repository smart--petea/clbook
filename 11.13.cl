;Rewrite the following function using DOLIST instead DO*.
(defun first-non-integer(x)
  "Return the first non-integer element of X."
  (do* ((z x (rest z))
        (z1 (first z) (first z)))
    ((null z) 'none)
    (unless (integerp z1) (return z1))))

(defun my-first-non-integer(x)
  "Return the first non-integer element of X."
  (dolist (z1 x nil)
    (unless (integerp z1) (return z1))))

(print (my-first-non-integer '(1 2 a 3 4)))
