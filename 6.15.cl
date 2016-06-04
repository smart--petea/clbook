;We can use MEMBER to write a predicate that returns a true value if a
;sentence contains the word "the."
;(defun contains-the-p (sent)(member 'the sent))
;Suppose we instead want a predicate CONTAINS-ARTICLE-P that
;returns a true value if a sentence contains any article, such as "the",
;"a," or "an". Write a version of this predicate using 
;INTERSECTION. Write another version using MEMBER and OR.
;Could you solve this problem with AND instead of OR
(defun contains-article-p-intersection(sent)
  (intersection '(the a an) sent)
  )

(defun contains-article-p-member(sent)
  (or
    (member 'a sent)
    (member 'an sent)
    (member 'the sent)
    )
  )

(defun contains-article-p-and(sent)
  (not
    (and
        (not (member 'a sent))
        (not (member 'an sent))
        (not (member 'the sent))
        )
    )
  )

(print (contains-article-p-intersection '(h an a)))
(print (contains-article-p-intersection '(h ann xa)))

(print (contains-article-p-member '(h an a)))
(print (contains-article-p-member '(h ann xa)))

(print (contains-article-p-and '(h an a)))
(print (contains-article-p-and '(h ann xa)))
