#!/usr/local/bin/guile -s
!#
(define (range n0 n1)
  (if (< n0 n1)
    (begin
      (display (string-append (number->string n0) "<" (number->string n1) "\n"))
      (cons n0 (range (+ n0 1) n1))
    )
    (begin
      (display (string-append (number->string n0) ">=" (number->string n1) "\n"))
      (cons n0 '())
    )
  )
)


;; Comment.
(define n 10)
(display (string-append "Range " (number->string n) "\n"))
(range 0 n)
