(define (same-parity a . b)
  (if (even? a)
      (cons a (filter even? b))
      (cons a (filter odd? b))))

(define (same-parity-rec a . b)
  (if (even? a)
      (cons a (filter-rec even? b))
      (cons a (filter-rec odd? b))))

(define (filter-rec f a)
  (if (null? a)
      nil
      (if (f (car a))
          (cons (car a) (filter-rec f (cdr a)))
          (filter-rec f (cdr a)))))

(define (filter f a)
  (define (filter-iter a b)
    (if (null? a)
        b
        (filter-iter (cdr a)
                     (if (f (car a))
                         (append b (list (car a)))
                         b))))
  (filter-iter a nil))

(define a (same-parity 1 2 3 4 5 6 7))

(define b (same-parity 2 3 4 5 6 7))

