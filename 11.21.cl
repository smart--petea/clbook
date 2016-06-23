;One way to compute Fib(5) is to start with Fib(0) and Fib(1), which we 
;know to be one, and add them together, giving Fib(2). Then add Fib(1)
;and Fib(2) to get Fib(3). Add Fib(2) and Fib(3) to get Fib(4). Add 
;Fib(3) and Fib(4) to get Fib(5). This is an iterative method involving
;no recursion; we merely have to keep around the last two values of Fib
;to compute the next one. Write an iterative version of FIB using this technique
(defun fib(n)
  (do*
    (
     (temp 0 (+ f0 f1))
     (f0 0 f1)
     (f1 1 temp)
     (i 0 (1+ i))
     )
    ((equal i (1- n)) f1)
    )
  )

(print (fib 2))
