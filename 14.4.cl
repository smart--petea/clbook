;Write a macro called SIMPLE-ROTATEF that switches the value of
;two variables. For example, if A is two and B is seven, then (
;(SIMPLE-ROTATEF A B) should make A seven and B two. Obiously, setting
;A to B first, andh setting B to A won't work. Your macro should
;expand into a LET expression that holds on to the original values of the
;two variables and then assigns them their new values in its body.
(defmacro simple-rotatef(a b)
  `(let (
         (a-temp ,a)
         )
     (setf a ,b)
     (setf b a-temp)
     )
  )

(setf a 5)
(setf b 6)
(simple-rotatef a b)
(print a)
(print b)
