
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x) (= 0 (remainder x 2)))

(define (mult x y)
  (define (mult-iter a b sum)
    (cond ((= a 0) sum)
	  ((even? a) (mult-iter (halve a) (double b) sum))
	  (else (mult-iter (- a 1) b (+ sum b)))))
  (mult-iter x y 0))
