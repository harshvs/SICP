
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x) (= 0 (remainder x 2)))

(define (mult x y)
  (cond ((= x 0) 0)
	((= x 1) y)
	((even? x) (double (mult (halve x) y)))
	(else (+ y (mult (- x 1) y)))))
