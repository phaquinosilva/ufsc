
(defun power (x y)
    (if (= y 0)
        1
        (* x (power x (- y 1)))
    )
)

(defun main()
    (setq x (read))
    (setq y (read))
    (write-line (write-to-string (power x y)))
)

(main)