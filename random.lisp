(defun gen-rand (incl min max)
  	(let*
	    (
			(delta (- max min))
			(incl-val (+ ((lambda (incl)
						    (if incl 1 0)
						  ) incl) delta))
			(gen-num (random incl-val (make-random-state t)))
			(offset-val (+ min gen-num))
		 )

	    offset-val	
	 )
  )
