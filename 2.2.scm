
(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment p q)
  (cons p q))

(define (start-segment z)
  (car z))

(define (end-segment z)
  (cdr z))

(define (midpoint-segment z)
  (let ((p1 (start-segment z))
        (p2 (end-segment z)))
    (make-point (/ (+ (x-point p1) (x-point p2)) 2)
                (/ (+ (y-point p1) (y-point p2)) 2))))

        
(print-point (start-segment (make-segment (make-point 3 4) (make-point 5 6))))
(print-point (midpoint-segment (make-segment (make-point 3 4) (make-point 5 6))))