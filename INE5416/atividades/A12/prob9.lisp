
(defun inverte_ (lst rev)
    (if (null lst)
        rev
        (inverte_   (cdr lst)
                    (cons (car lst) rev))
    )
)

(defun inverte (lst)
    (inverte_ lst '())
)

(defun main()
    (write-line (write-to-string (inverte '(-2 1 0 2 3 -3 2 5))))
)

(main)