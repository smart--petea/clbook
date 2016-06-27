;Using SYMBOL-PLIST, write your own version of the GET function
(defun my-get(symbl prop)
  (second (member prop (symbol-plist symbl)))
  )

;(setf (my-get 'x 'a) 5)
(setf (get 'x 'a) 5)
(print (my-get 'x 'a))
