;The COOKIE-MONSTER function keeps reading data from the
;terminal until it reads the symbol COOKIE. Write COOKIe-MONSTER.
(defun cookie-monster()
  (format t "~&Give me cookie!!!~&Cookie?")
  (let
    ((x (read)))
    (if
      (eq x 'cookie)
      (format t "Thank you!...Munch munch munch...BURP")
      (OR (format t "~&No want ~S" x) (cookie-monster))
      )
    )
  )

(cookie-monster)
