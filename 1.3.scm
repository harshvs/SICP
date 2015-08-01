
;; Deduct the square of the lowest term from whole
(define (f a b c) (- (+ (* a a) (* b b) (* c c)) 
		     (* (cond ((and (< a b) (< a c)) (* a a))
			      ((and (< b c) (< b a)) (* b b))
			      (else (* c c))))))

  
;; Elegant
(define (sqr x) (* x x))
(define (f1 a b c) (+ (sqr (max a b))
		      (sqr (max (min a b) c))))
