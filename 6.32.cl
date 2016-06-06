;Write the function WHO-WROTE that takes the name of a book as input and returns the book's author
(setf books '(
              (WAR-AND-PEACE LEO-TOLSTOY)
              (FIFTY-SHADES-OF-GREY E-J-JAMES)
              (CATCHING-FIRE SUZANNE-COLLINS)
              (MOCKINGJAY-THE-HUNGER-GAMES SUZANNE-COLLINS)
              (ANGELA'S-ASHES-A-MEMOIR FRANK-MCCOURT)
              )
      )

(defun who-wrote(author)
  (assoc author books)
  )

(print (who-wrote 'CATCHING-FIRE))
