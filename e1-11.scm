;A function f is defined by the rule that f(n) = n if n < 3 
;and f(n)=f(n-1) + 2f(n - 2) + 3f(n-3) if n >=3. 
;Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.


; (define (foo n count)
; 	(cond 
; 		(( < n 3) n)
; 		(else
; 			(+
; 				(* n (foo (- count n)))
; 				(* (- n 1) (foo (- count (- n 1))))))))

; ;我为什么会这么想问题？因为，我没有理解，当n>3 的时候的那3个相加是一组，当n=4的时候还会有3个新的一组。
; ;我错误的理解成了， f(n) = f(n-1) + 2f(n-2) + 3f(n-3) + 4f(n-4)....nf(n-n) 我给理解成这个样子了。这个样子就没有n与组的对应关系了。

(define (f n)
	(cond 
		((< n 3) n)
		(else
			(+
				(f (- n 1))
				(* 2 (f (- n 2))
				(* 3 (f (- n 3))))))))

; ; this is recursive.



; f(0)=0
; f(1)=1
; f(2)=2
; f(3)=f(2)+2f(1)+3f(0)
; f(4)=f(3)+2f(2)+3f(1)
; f(5)=f(4)+2f(3)+3f(2)

;表达第n个比n-1个的变化总量

(define (f n)
	(define (iter a b c counter n)
		(if (= counter n) 
			a
			(iter 
				(+ a (* 2 b) (* 3 c))
				a
				b
				(+ 1 counter)
				n))
		)
	(iter 2 1 0 2 n))








	      




