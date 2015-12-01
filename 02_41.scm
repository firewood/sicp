(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence))
         (cons (car sequence)
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (cons i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(define (unique-trios n)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                    (map (lambda (k) (list i j k))
                         (enumerate-interval 1 (- j 1))))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(define (find-equal-sum n s)
  (define (equals-sum? trio)
    (= s (+ (car trio) (car (cdr trio)) (car (cdr (cdr trio))))))
  (filter equals-sum? (unique-trios n)))

(define a (unique-trios 5))

(define b (find-equal-sum 6 7))
