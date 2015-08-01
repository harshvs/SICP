
;; abs is constant
;; (define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (good-enough? current-guess next-guess)
  (< (/ (abs (- next-guess current-guess)) current-guess)
     0.001))

(define (average x y)
  (/ (+ x y) 2.0))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess next-guess x)
  (if (good-enough? guess next-guess)
      guess
      (sqrt-iter next-guess
		 (improve next-guess x)
		 x)))

(define (f-sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))

;; Diff based : 0.0001 => 0.03230
;; Ratio based: 0.0001 => 0.010000714038711746
