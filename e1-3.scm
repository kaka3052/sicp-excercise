; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.




(define (sum-of-squares x y)
	(+ (* x x) (* y y)))



(define (squares-of-two-larger x y z)
	(cond 
		((and (>= x y) (>= y z)) (sum-of-squares x y))
		((and (>= x y) (>= z y)) (sum-of-squares x z))
		((and (>= y x) (>= z x)) (sum-of-squares y z))
		((and (>= y x) (>= x z)) (sum-of-squares y x))
	))
