
; tells us how many times x can divide n
(define (factor-count n x)
  (if (= (remainder n x) 0)
      (+ (factor-count (/ n x) x) 1)
      0))

(define (my-cons x y)
  (* (expt x 2) (expt y 3)))

(define (my-car z)
  (factor-count z 2))

(define (my-cdr z)
  (factor-count z 3))