;Rewrite the following function to use DO instead DOTIMES.
(defun power-of-2(n)
  (let ((result 1))
    (dotimes (i n result)
      (incf result result)
      )
    )
  )

(defun my-power-of-2(n)
  (do* ((result 1 (incf result result))
        (i 0 (1+ i))
        )
    ((equal i n) result)
    )
  )

(print (my-power-of-2 3))
