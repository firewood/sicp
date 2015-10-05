(define (make-interval a b) (cons a b))

(define (upper-bound a) (cdr a))

(define (lower-bound a) (car a))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))

(define a (make-interval 3 5))

(define b (make-interval 4 6))

(define c (add-interval a b))

(define d (sub-interval c b))

