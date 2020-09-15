(define (cube-root x)
	(cube-iter 1.0 x))


(define (cube-iter guess x)
	(if (good-enough? guess x)
		guess 
		(cube-iter (improve guess x)
			x)))

(define (improve guess x)
	(/ (+ (/ x (* guess guess)) (* 2 guess)) 
		3))

(define (good-enough? guess x)
	(< (abs (- (cube guess) x)) 0.001))

(define (abs a)
	(if (< a 0)
		(- a) 
		a))

(define (cube x)
	(* x x x))
