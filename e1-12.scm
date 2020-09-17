;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1
;    ...



(define (pascal row col)
  (cond 
  	((< col row) (error "unvalid col value"))
	((or (= 0 col) (= col row)) 1)
  	(else (+ (pascal (- row 1) (- col 1))
  			 (pascal (- row 1) col)))))