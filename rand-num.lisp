(load "random.lisp")

(let
    ((number (gen-rand nil 1 10)))
    (format t "The number is: ~A." number)
 )
