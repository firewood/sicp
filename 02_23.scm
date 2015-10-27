(define (for-each func items)
  (cond ((not (null? items))
         (func (car items))
         (for-each func (cdr items)))))

(define (for-each2 func items)
  (cond ((not (null? items))
      ((lambda (x) (func (car x)) (for-each2 func (cdr x))) items))))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))

(for-each2 (lambda (x) (newline) (display x))
          (list 57 321 88))
