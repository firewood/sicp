(define (max a b)
  (if (> a b)
      a
      b))
  
(define (square n)
  (* n n))

(define (square-of-max a b)
  (square (max a b)))
