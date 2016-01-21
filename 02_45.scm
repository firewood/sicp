(define wave diagonal-shading)

(define (right-split1 painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split1 painter (- n 1))))
        (beside painter (below smaller smaller)))))

(define (up-split1 painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split1 painter (- n 1))))
        (below painter (beside smaller smaller)))))

(define (split a b)
  (define (iter painter n)
    (if (= n 0)
        painter
        (let ((smaller (iter painter (- n 1))))
          (a painter (b smaller smaller)))))
  iter)

(define right-split (split beside below))
(define up-split (split below beside))

(define e einstein)

(define pe (paint e))

(define a (paint (right-split e 2)))
(define b (paint (right-split1 e 2)))
