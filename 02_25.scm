(define a (list 1 3 (list 5 7) 9))

(define b (list (list 7)))

(define c (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(define a7 (car (cdr (car (cdr (cdr a))))))

(define b7 (car (car b)))

(define c7 (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr c)))))))))))))
