
(defun absolute (x)
    (if (>= x 0)
        x
        (- 0 x)
    )
)

(defun main ()
    (setq x (read))
    (write-line (write-to-string (absolute x)))
)

(main)