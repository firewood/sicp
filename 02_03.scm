(define (make-rectangle width height point angle)
  (cons
   (cons width height)
   (cons point angle)))

(define (rectangle-width r) (car (car r)))

(define (rectangle-height r) (cdr (car r)))

(define (rectangle-point r) (car (cdr r)))

(define (rectangle-angle r) (cdr (cdr r)))

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

(define (print-rectangle r)
  (print-point (rectangle-point r))
  (display ", (")
  (display (rectangle-width r))
  (display " x ")
  (display (rectangle-height r))
  (display "), ")
  (display (rectangle-angle r)))

(define g (make-point 0 0))

(define a (make-point 10 20))

(define b (make-point -4 8))

(define r (make-rectangle 123 456 a 0))

(print-rectangle r)

