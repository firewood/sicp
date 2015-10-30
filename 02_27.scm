(define (deep-reverse items)
  (if (pair? items)
      (reverse (map deep-reverse items))
      items))

(define a (list 1 2 3 4 5 (list 1 2)))

(deep-reverse a)
