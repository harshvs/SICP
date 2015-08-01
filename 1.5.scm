
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
;; Ans: The applicative-order evaluation goes into the infinite recursion.
