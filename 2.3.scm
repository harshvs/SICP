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

;(define (make-rect p1 p2)
;  (cons p1 p2))

;(define (rect-xlen r)
; (abs (- (x-point (car r)) (x-point (cdr r)))))

;(define (rect-ylen r)
;  (abs (- (y-point (car r)) (y-point (cdr r)))))

(define (make-rect p w h)
  (cons p (cons w h)))

(define (rect-xlen r)
  (car (cdr r)))

(define (rect-ylen r)
  (cdr (cdr r)))

(define (rect-perimeter r)
  (* 2 (+ (rect-xlen r) (rect-ylen r))))

(define (rect-area r)
  (* (rect-xlen r) (rect-ylen r)))

;(define myrect (make-rect (make-point 0 0)
;                          (make-point 4 5)))

(define myrect (make-rect (make-point 0 0)
                          4
                          5))

(rect-perimeter myrect)
(rect-area myrect)
 