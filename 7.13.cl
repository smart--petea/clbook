;Write a function that picks from a list of lists those of exactly length
;two
(defun my-foo(lst)
  (remove-if-not
    #'(lambda(x)
        (equal (length x) 2)
        )
    lst
    )
  )

(print (my-foo '((a b) (c d e) (f g) (h) (h g f))))
