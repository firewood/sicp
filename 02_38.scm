(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define a (fold-right / 1 (list 1 2 3)))

(define b (fold-left / 1 (list 1 2 3)))

(define c (fold-right list nil (list 1 2 3)))

(define d (fold-left list nil (list 1 2 3)))
