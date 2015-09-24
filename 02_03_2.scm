(define (make-rectangle seg-a seg-b)
  (cons seg-a seg-b))

(define (rectangle-seg-a r) (car r))

(define (rectangle-seg-b r) (cdr r))

(define (rectangle-width r)
  (segment-length (make-segment (start-segment (rectangle-seg-a r))
                                (start-segment (rectangle-seg-b r)))))

(define (rectangle-height r) (segment-length (rectangle-seg-a r)))

(define (perimeter r)
  (* (+ (rectangle-width r) (rectangle-height r)) 2))

(define (area a)
  (* (rectangle-width r) (rectangle-height r)))

(define (make-segment start end)
  (cons start end))

(define (make-point x y)
  (cons x y))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (segment-length segment)
  (let ((dx (- (x-point (start-segment segment)) (x-point (end-segment segment))))
        (dy (- (y-point (start-segment segment)) (y-point (end-segment segment))))
        )
    (sqrt (+ (* dx dx) (* dy dy)))))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (print-segment s)
  (print-point (start-segment s))
  (display "-")
  (print-point (end-segment s)))

(define (print-rectangle r)
  (print-segment (rectangle-seg-a r))
  (display ",")
  (print-segment (rectangle-seg-b r))
  (newline)
  
  )

(define g (make-point 0 0))

(define a (make-point 1 1))

(define b (make-point 1 2))

(define c (make-point 2 1))

(define d (make-point 2 2))

(define seg-a (make-segment a b))

(define seg-b (make-segment c d))

(define r (make-rectangle seg-a seg-b))

(print-rectangle r)

(rectangle-width r)

(rectangle-height r)

