(define (fringe items)
  (define (iter a b)
    (if (null? a)
        b
        (if (pair? a)
            (iter (car a) (iter (cdr a) b))
            (cons a b))))
  (iter items nil))

(define a (fringe (list (list 1 2) (list 3 4))))

(define b (list 1 2 3 4))
