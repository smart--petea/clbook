;Why did the IT-INTERSECTION function return elements in reverse 
;order from the order they appeared in its first input? How can you correct this?
(defun it-intersection(x y)
  (let ((result-set (list 's)))
    (dolist (element x (cdr result-set))
      (when (member element y)
        (setf (cdr (last result-set)) (list element))))))

(print (it-intersection '(f a c e) '(c l o v e)))
