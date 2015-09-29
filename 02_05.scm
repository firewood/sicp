(define (cons x y)
  (* (fast-expt 2 x) (fast-expt 3 y)))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square n) (* n n))

(define (car z)
  (if (even? z)
      (+ 1 (car (/ z 2)))
      0))

(define (cdr z)
  (if (three? z)
      (+ 1 (car (/ z 3)))
      0))

(define (three? n)
  (let ((x (/ n 3)))
    (if (= n (* x 3))
        1
        0)))

(define a (cons 3 4))

(car a)

(cdr a)

