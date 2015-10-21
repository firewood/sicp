(define one-through-four (list 1 2 3 4))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (length-rec items)
  (if (null? items)
      0
      (+ 1 (length-rec (cdr items)))))

(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (last-pair-rec items)
  (if (= 1 (length items))
      items
      (last-pair-rec (cdr items))))

(define (last-pair items)
  (list (list-ref items (- (length items) 1))))

(define squares (list 1 4 9 16 25))

(define odds (list 1 3 5 7))

(list-ref squares 3)

(length odds)

(append squares odds)

(last-pair squares)
