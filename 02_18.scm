(define (reverse items)
  (define (reverse-iter a b)
    (if (null? a)
        b
        (reverse-iter (cdr a) (cons (car a) b))))
  (reverse-iter items nil))

(define (reverse-rec items)
  (if (null? items)
      nil
      (append (reverse-rec (cdr items)) (list (car items)))))

(reverse (list 1 2 3 4 5))

(reverse (reverse (list 1 2 3 4 5)))

(reverse-rec (list 1 2 3 4 5))
