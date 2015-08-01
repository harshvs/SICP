
(define (f-rec n)
  (cond ((< n 3) n)
	(else (+ (f-rec (- n 1))
		 (* 2 (f-rec (- n 2)))
		 (* 3 (f-rec (- n 3)))))))

(define (f-iter n)
  (define (f-iter-step fa fb fc  p)
    (cond ((> p n) fa)
	  (else (f-iter-step 
		 (+ fa (* 2 fb) (* 3 fc))
		 fa
		 fb
		 (+ p 1)))))
  (cond ((< n 3) n)
	(else (f-iter-step 2 1 0 3))))

	
