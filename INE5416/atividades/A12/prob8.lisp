
(defun fatia (lst n m)
    (cond
        ((> n 0) (fatia (cdr lst) (1- n) (1- m)))
        ((> m 0) (cons (car lst) (fatia (cdr lst) n (1- m))))
        (t ())
    )
)

(defun main ()
    (write-line (write-to-string (fatia '(-2 1 0 2 3 -3 4 5) 0 3)))
    (write-line (write-to-string (fatia '(-2 1 0 2 3 -3 2 5) 1 3)))
    (write-line (write-to-string (fatia '(-2 1 0 2 3 -3 2 5) 0 8)))
)

(main)