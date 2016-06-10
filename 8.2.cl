;Show how to write ANYODDP using IF instead of COND
(defun anyoddp(x)
  (if (null x)
    nil
    (if
      (oddp (first x))
      t
      (anyoddp (cdr x))
      )
    )
  )

(print (anyoddp '(3142 5798 6550 8914)))
(print (anyoddp '(3142 5798 5 6550 8914)))

