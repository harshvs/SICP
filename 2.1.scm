(define (make-rat-my x y)
  (let ((sign (if (< (* x y) 0)
                  -1
                  1))
        (n (abs x))
        (d (abs y)))
    (let ((g (gcd n d)))
      (cons (* sign (/ n g))
            (/ d g)))))

(define (make-rat-2 x y)
  (let ((g (gcd x y)))
    (if (< y 0)
        (cons (/ (* -1 x) g) (/ (* -1 y) g))
        (cons (/ x g) (/ y g)))))
        
(define (numer x) (car x))

(define (denom x) (cdr x))
