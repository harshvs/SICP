
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

;; abs is constant
;; (define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2.0))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

(define (f-sqrt x)
  (sqrt-iter 1.0 x))

;; Ans: The else-clause is always evaluated, irrespective of the predicate's
;; value. sqrt-iter therefore goes into infinite recursion.
