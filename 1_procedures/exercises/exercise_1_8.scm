; exercise 1.8

; Newton method for cube roots:
; y ~ cbrt(x) => ((x/y^2) + 2y)/3 is better approximation

(define (cbrt x)
  (cbrt-step 0.0 1.0 x))

(define (cbrt-step prev-guess guess x)
  (if (good-enough? prev-guess guess x)
      guess
      (cbrt-step guess (impr-guess guess x) x)))

(define (good-enough? prev-guess guess x)
  (< (/ (abs (- guess prev-guess)) guess) 0.001))

(define (impr-guess guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
  (* x x))