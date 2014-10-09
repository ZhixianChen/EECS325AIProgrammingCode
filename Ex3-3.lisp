(defun occurrences (lst)
  (let ((acc nil))
    (dolist (item lst)
      (let ((pair (assoc item acc)))
        (if pair
            (incf (cdr pair))
            (push (cons item 1) acc))))
    (sort acc #'> :key #'cdr)))

;Get rid of DOLIST addiction. DO is more general and more structured.

(defun occurrences (lst)
  (do ((l lst (cdr l))
       (count-list nil (let ((pair (assoc (car l) count-list)))
                         (cond (pair (incf (cdr pair)) count-list)
                               (t (push (cons (car l) 1) count-list))))))
       ((null l) (sort count-list #'> :key #'cdr))))



