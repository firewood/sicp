(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

(define (branch-weight branch)
  (if (pair? (branch-structure branch))
      (total-weight (branch-structure branch))
      (branch-structure branch)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (balanced? mobile)
  (if (pair? mobile)
      (and
       (= (* (branch-weight (left-branch mobile)) (branch-length (left-branch mobile)))
          (* (branch-weight (right-branch mobile)) (branch-length (right-branch mobile))))
       (balanced? (branch-structure (left-branch mobile)))
       (balanced? (branch-structure (right-branch mobile))))
      #t))
      
(define a (make-branch 10 4))

(define b (make-branch 20 2))

(define c (make-mobile a b))

