;Write a function that counts how many times the word "the" appears
;in a sentence
(defun my-foo(lst)
  (length
    (remove-if-not
        #'(lambda (x)
            (eq x 'the)
            )
        lst
        )
    )
  )

(print (my-foo '(the lisp is a the lng)))
