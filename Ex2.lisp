;2-4
(defun greater (x y) 
  (if (> x y) 
      x
      y))

;2-7
(defun has-list-p (x)
  (if (null x)
      nil
    (or (listp (car x))
        (has-list-p (cdr x)))))

;2-8
;recursion
(defun print-dots (num)
  (when (> num 0)
        (format t ".")
        (print-dots (1- num))))

;iteration
(defun print-dots (num)
  (do ((i 0 (1+ i)))
      ((= i num))
    (format t ".")))

;recursion
(defun get-a-count (lst)
  (cond ((null lst) 0)
        ((eql (car lst) 'a) (1+ (get-a-count (cdr lst))))
        (t (get-a-count (cdr lst)))))
  

;iteration
(defun get-a-count (lst)
  (do ((ls lst (cdr ls))
       (n 0 (+ n (if (eql (car ls) 'a) 1 0))))
      ((not ls) n)))

;2-9
(defun summit (lst) 
  (apply #'+ (remove nil lst)))

(defun summit (lst)
  (if (null lst)
      0
      (let ((x (car lst)))
        (if (null x)
            (summit (cdr lst))
            (+ x (summit (cdr lst)))))))


  
