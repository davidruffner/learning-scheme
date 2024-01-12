#!/usr/local/bin/guile -s
!#
(define (range n0 n1)
  (if (< n0 n1)
    (cons n0 (range (+ n0 1) n1))
    (cons n0 '())
  )
)

(define (checkValue v)
  (cond
    ((equal? (modulo v (* 3 5)) 0)
      "Fizz Buzz")
    ((equal? (modulo v 5) 0)
      "Buzz")
    ((equal? (modulo v 3) 0)
      "Fizz")
    (else
        (number->string v))
   )
)


(define (fizzbuzz n)
  (map checkValue (range 1 n))
)

; Test
(define expected '("1" "2" "Fizz" "4" "Buzz" "Fizz" "7" "8" "Fizz" "Buzz" "11" "Fizz" "13" "14" "Fizz Buzz"))
(display (fizzbuzz 15))
(display (equal? expected (fizzbuzz 15)))
