; exercise 1.7

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

; if x is very small, for example 0.00001, then
; difference of 0.001 is inadequate: guess sqrt(0.001)
; 0.001 - 0.0001 < 0.001
; sqrt(everything that is less than 0.001) will be ~ equal to sqrt(0.001)
; as result we return very wrong sqrt value

; if x is very large the difference of x and squared guess might never have
; decimal part needed to compare with 0.001
; as result good-enough never evaluates to true

(define (better-good-enough? previous-guess guess x)
  (< (/ (abs (- guess previous-guess)) guess) 0.001))

(define (square x) (* x x))

(define (sqrt-iter previous-guess guess x)
  (if (better-good-enough? previous-guess guess x)
    guess
    (sqrt-iter guess (improve guess x)
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))