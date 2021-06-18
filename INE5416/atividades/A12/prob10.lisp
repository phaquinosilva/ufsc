
(defun mapear (f lst)
    (if (null lst)
        '()
        (cons (funcall f (car lst)) (mapear f (cdr lst)))
    )
)

(defun main ()
    (write-line (write-to-string (mapear '1+ '(-2 1 0 2 3 -3 4 5))))
)

(main)