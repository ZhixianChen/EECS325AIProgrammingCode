(defun stable-union (lst1 lst2)
  (do ((l lst2 (cdr l))
       (lst (reverse lst1) (cond ((member (car l) lst) lst)
                                 (t (push (car l) lst)))))
      ((null l) (reverse lst))))

;;; Union can be defined in one line with a basic Lisp function and (stable) set difference.

(defun stable-intersection (lst1 lst2)
  (do ((l lst1 (cdr l))
       (lst lst1 (cond ((member (car l) lst2) lst)
                       (t (remove (car l) lst)))))
      ((null l) lst)))


(defun stable-set-difference (lst1 lst2)
  (do ((l lst1 (cdr l))
       (lst lst1 (cond ((not (member (car l) lst2)) lst)
                       (t (remove (car l) lst)))))
      ((null l) lst)))


;;; Instead of (NOT test), switch the branches, and just use test.
;;; Remove makes a copy of the sequence. Calling it repeatedly in iteration or recursion is therefore very expensive.
;;; Delete is not the answer, since it messes up the original sequence.




