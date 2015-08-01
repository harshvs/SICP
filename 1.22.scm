
(define (my-runtime) 
  (real-time-clock))

(define (square n)
  (* n n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (start-prime-test n (my-runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (my-runtime) start-time))))

(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))

(define (even? a)
  (= 0 (remainder a 2)))

;; Search for primes
(define (search-for-primes a b)
  (cond ((even? a) 
	 (search-odds-for-primes (+ a 1) b))
	(else
	 (search-odds-for-primes a b))))

(define (search-odds-for-primes a b)
  (cond ((< a b) (begin
		   (timed-prime-test a)
		   (search-odds-for-primes (+ a 2) b)))))

  
;; Search-For-Primes
;;(search-for-primes 100000 100999)
;;(search-for-primes 1000000 1000999)
;;(search-for-primes 10000000 10000999)
;;(search-for-primes 1000000000 100000099)
