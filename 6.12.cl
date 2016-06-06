;Does MEMBER have to copy its input to produce itsh result? Explain
;your reasoning.
(setf x '(a b c))
(print (if
         (equal (member 'a x) x)
         'no
         'yes
         )
       )
