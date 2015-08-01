
(define (cube x) (* x x x))

(define (good-enough? current-guess next-guess)
  (< (/ (abs (- next-guess current-guess)) current-guess)
     0.001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess))
     3))

(define (cute-root-iter guess next-guess x)
  (if (good-enough? guess next-guess)
      guess
      (cute-root-iter next-guess
		      (improve next-guess x)
		      x)))

(define (cube-root x)
  (cute-root-iter 1.0 (improve 1.0 x) x))

;; Ans: Only good enough has be to be changed.
