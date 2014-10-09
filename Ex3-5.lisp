;iteration
(defun position+ (lst)
  (do ((i 0 (1+ i))
       (l lst (cdr l))
       (newlist nil (cons (+ (car l) i) newlist)))
      ((null l) (reverse newlist))))


;recursion
(defun position+ (lst &optional (i 0))
  (cond (lst (cons (+ i (car lst)) (position+ (cdr lst) (1+ i))))
        (t nil)))




;mapcar version
(defun position+ (lst)
  (let ((i -1))
    (mapcar #'(lambda (x) (+ x (1+ i))) lst)))

(defun position+ (lst)
  (do ((i 0 (1+ i))
       (l lst (cdr l))
       (newlist lst (mapcar #'(lambda (x) (+ x i)) newlist)))
      ((null l) newlist)))