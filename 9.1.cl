;Write a function to print the following saying on the display: "There
;are old pilots, and threre are bold pilots, thet there are no old bold
;pilots.". Your function should break up the quotation into several lines
(defun my-print()
  (format t "There are old pilots, ~&and there are bold pilots, ~&but there are no old bold pilots.")
  )

(my-print)
