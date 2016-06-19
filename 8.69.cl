;Of the positive integers greater than one, some are primes while others
;are not. Primes are numbers that are divisible only by themselves and
;by 1. A nonprime, which is known as a composite number, can always
;be factored into primes. Here is a factorization tree fro the number 60 
;that was obtained by successive division divisions by primes.
;The number 60 has factors 2, 2, 3, and 5, which means 60 = 2x2x3x5.
;Write a recursive dfinition for positive integers greater than one in terms
;of prime numbers
(defun factors(nmbr)
  (labels
    ((factors-recursive(x nmbr)
       (cond
         ((equal x nmbr) (list nmbr))
         ((equal (* (floor (/ nmbr x)) x) nmbr) (cons x (factors-recursive x (/ nmbr x))))
         (t (factors-recursive (1+ x) nmbr))
         )
       )
     )
    (factors-recursive 2 nmbr)
    )
  )

(print (factors 60))
