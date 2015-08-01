
(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (+v1 a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+v2 a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

;; +v1 generates linear recursive process.
;; +v2 generates linear iterative process.
