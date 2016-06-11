;write the very shortest infinite recursion function you can
(defun my-foo()
  (my-foo)
  )

(my-foo)
