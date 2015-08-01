
(define (pascal r c)
  (cond ((or (= c 0) (= c r))
	 1)
	((< c r)
	 (+ (pascal (- r 1)
		    (- c 1))
	    (pascal (- r 1)
		    c)))
	(else 0)))

	
