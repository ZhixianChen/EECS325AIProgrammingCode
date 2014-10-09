(defun stable-union (lst1 lst2)
  (append lst1 (stable-set-difference lst2 lst1)))

(defun stable-intersection (lst1 lst2)
  (do ((l lst1 (cdr l))
       (lst nil (cond ((member (car l) lst2) (push (car l) lst))
                       (t lst))))
      ((null l) (reverse lst))))

(defun stable-set-difference (lst1 lst2)
  (do ((l lst1 (cdr l))
       (lst nil (cond ((member (car l) lst2) lst)
                      (t (push (car l) lst)))))
      ((null l) (reverse lst))))