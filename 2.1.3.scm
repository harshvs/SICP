(define (my-cons x y)
  (lambda (m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "my-cons - arg must be 0 or 1")))))

(define (my-car z)
  (z 0))

(define (my-cdr z)
  (z 1))
