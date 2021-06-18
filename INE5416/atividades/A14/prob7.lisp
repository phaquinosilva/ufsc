
(defun filtrar (f lst)
    (cond ((null lst) '())
          ((funcall f (car lst)) (cons (car lst) (filtrar f (cdr lst))))
          (t (filtrar f (cdr lst)))))

(defun lista (n)
    (let ((lst ()))
        (dotimes (i n (nreverse lst))
            (push (1+ i) lst))))

(defun main ()
    (write-line (write-to-string (filtrar (lambda (x) (/= (mod x 2) 0)) (lista 30)))))

(main)