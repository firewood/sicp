(define us-coins (list 50 25 10 5 1))

(define us-coins2 (list 25 1 50 5 10))

(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define uk-coins2 (reverse uk-coins))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount 
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

(define (no-more? coin-values) (null? coin-values))

(define (except-first-denomination coin-values) (cdr coin-values))

(define (first-denomination coin-values) (car coin-values))

(cc 100 us-coins)

(cc 100 us-coins2)

(cc 10 uk-coins)

(cc 10 uk-coins2)
