; exercise 1.4
; adds absolute value of b to a

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))