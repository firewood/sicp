(define (midpoint-segment s)
  (let ((a (start-segment s))
        (b (end-segment s)))
    (make-point
     (/ (+ (x-point a) (x-point b)) 2)
     (/ (+ (y-point a) (y-point b)) 2))))

(define (make-segment start end)
  (cons start end))

(define (make-point x y)
  (cons x y))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define g (make-point 0 0))

(define a (make-point 10 20))

(define b (make-point -4 8))

(define c (make-segment a b))

(define d (midpoint-segment c))

(print-point c)
