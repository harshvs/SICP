
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; (if (> b 0) + -) is evaluated to + if the condition is true, otherwise -.
