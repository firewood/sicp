(define (make-interval a b) (cons a b))

(define (upper-bound a) (cdr a))

(define (lower-bound a) (car a))

(define (interval-width a) (/ (- (upper-bound a) (lower-bound a)) 2))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (lower-bound y))
                 (- (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (let ((uby (upper-bound y))
        (lby (lower-bound y)))
    (if (= 0 (* uby lby))
        (error "division by zero")
        (mul-interval x
                (make-interval (/ 1.0 uby) (/ 1.0 lby))))))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (percent i)
  (* (/ (width i) (center i)) 100))

(define (make-center-percent c p)
  (let ((pp (/ (* c p) 100)))
    (make-interval (- c pp) (+ c pp))))

(define a (make-center-percent 100 1))

