(define (fringe items)
  (define (iter a b)
    (if (null? a)
        b
        (if (pair? a)
            (iter (car a) (iter (cdr a) b))
            (cons a b))))
  (iter items nil))

(define (fringe items)
  (if (pair? items)
      (if (pair? (car items))
          (if (null? (cdr (car items)))
              (cons (car (car items)) (fringe (cdr items)))
              (fringe (cons (car (car items)) (cons (cdr (car items)) (cdr items)))))
          (cons (car items) (fringe (cdr items))))
      items))

(define a (list 1 2 3 4))

(define b (fringe (list (list 1 2) (list 3 4))))

(define c (fringe (list (list 1 2 3) (list 4 5 6))))
