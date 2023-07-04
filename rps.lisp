(defun get-player-choice (options)
  	(format t "Please enter either -> ~{~A~^, ~}: " options)
	(force-output)

	(let ((choice (string-downcase (read-line))))
	   (if
		  ; (member (string-downcase (read-line)) options :test #'equal)
		  (member choice options :test #'equal)
		   choice
		   (get-player-choice options)
		   ; (format t "It exists!~%")
		   ; (format t "It does not exist!~%")
		 )
	   )

  	; (first options)
 )

(defun game ()
   (let
	  (
	    (
		  options (list "rock" "paper" "scissors") 
		 )
	   )
	 )
  )

(format t "~A" (game))

(
  (
    let* ((options '("rock" "paper" "scissors"))
		  (cpu-choice (nth (random (length options) (make-random-state t)) options))
		  (player-choice (get-player-choice options))
   ) 
	; (format t "Player: ~A, CPU: ~A~%" player-choice cpu-choice)
	)

   (format t "You entered: ~A, CPU entered ~A~%" player-choice cpu-choice)
   (cond
	  ; When a draw has occurred
	  ((equal cpu-choice player-choice)
	   (format t "You entered : ~A, CPU entered : ~A. It's a Draw!~%" player-choice cpu-choice))

	  ; If user enters rock and cpu enters scissors
	  ((and (equal player-choice "rock")
			(equal cpu-choice "scissors"))
		  (format t "You entered : ~A, CPU entered : ~A. You Win!~%" player-choice cpu-choice))
	  ; If user enters paper and cpu enters rock
	  ((and (equal player-choice "paper")
			(equal cpu-choice "rock"))
		  (format t "You entered : ~A, CPU entered : ~A. You Win!~%" player-choice cpu-choice))
	  ; If user enters scissors ands cpu enters paper
	  ((and (equal player-choice "scissors")
			(equal cpu-choice "paper"))
		  (format t "You win!~%"))

	  (t (format t "You lose!~%" player-choice cpu-choice))
	 )
 )
