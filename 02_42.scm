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

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(define (queens board-size)
  (define empty-board nil)
  (define (adjoin-position row k rest)
    (cons row rest))
  (define (safe? k positions)
    (define (sub-safe? t step pos)
      (or (null? pos)
          (and (not (= (+ t step) (car pos)))
               (sub-safe? (+ t step) step (cdr pos)))))
    (or (null? (cdr positions))
        (and (sub-safe? (car positions) -1 (cdr positions))
             (sub-safe? (car positions) 0 (cdr positions))
             (sub-safe? (car positions) 1 (cdr positions)))))
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define a (queens 4))
