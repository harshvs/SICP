
(define (even? x) (= 0 (remainder x 2)))

(define (fib n)
  (define (fib-iter a b p q count)
    (cond ((= count 0) 
	   b)
	  ((even? count) 
	   (fib-iter a
		     b
		     (+ (* p p) (* q q))
		     (+ (* 2 p q) (* q q))
		     (/ count 2)))
	  (else 
	   (fib-iter (+ (* b p) (* a q) (* a p))
		     (+ (* b p) (* a q))
		     p
		     q
		     (- count 1)))))
  (fib-iter 1 0 0 1 n))
