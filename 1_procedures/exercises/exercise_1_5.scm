; exercise 1.5

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; how to define a procedure
(define some-procedure (lambda (x) (x)))
(define (another-procedure x) (* x x))
; so defining
(define (p) (p))
; means defining it with name 'p', then calling itself in the body
; so it recursively calls itself

; when we call test in case of applicative-order it evaluates arguments first
; 0 evaluates to 0 and evaluating (p) takes infinite time or should cause error

; in case of normal-order evaluation (test) will compare x to 0 first and return 0

; thus used interpreter seems to be in applicative-order