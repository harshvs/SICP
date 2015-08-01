; Chruch Numerals
;; Identity 
(define zero (lambda (f) (lambda (x) x)))

;; Apply f just one time
(define one (lambda (f) (lambda (x) (f x))))

;; Apply f two times
(define two (lambda (f) (lambda (x) (f (f x)))))

;; Apply f one more time
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; Apply f, first n times and then m times, total m+n times.
(define (add n m) 
  (lambda (f) (lambda (x) ( (m f) ((n f) x)))))

;; testing
(define (inc x)
  (+ x 1))

(define (double x)
  (* 2 x))

;;> (((add one one) inc) 4)
;;6
;;> (((add one two) inc) 4)
;;7
;;> 

;;> (((add one two) double) 3)
;;24
;;> 