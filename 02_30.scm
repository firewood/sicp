(define (square-tree tree)
  (if (pair? tree)
      (cons (square-tree (car tree))
            (square-tree (cdr tree)))
      (if (null? tree)
          nil
          (square tree))))

(define (square-tree tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree sub-tree)
             (square sub-tree)))
       tree))

(define (square n) (* n n))

(define a (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define b (square-tree a))
