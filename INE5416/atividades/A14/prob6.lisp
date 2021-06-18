
(defun mapear (f lst)
    (if (null lst)
        '()
        (cons (funcall f (car lst)) (mapear f (cdr lst)))
    )
)

(defun lista (n)
    (let ((lst ()))
        (dotimes (i n (nreverse lst))
            (push (1+ i) lst))))

(defun main ()
    (write-line (write-to-string (mapear (lambda (x) (= (mod x 2) 0)) (lista 30)))))

(main)