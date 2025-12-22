; exercise 1.9

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; evaluating (+ a b)
; (+ 4 5)
; inc increments by 1, dec decrements by 1
; iterative or recursive?

; first procedure: a is not 0, so the second case is called
; (dec a) is evaluated: 3, then 3 + 5 recursive call to itself
; till (dec a) = 0, then contraction and evaluation, returns 9
; functions to call are remembered for later
; recursive

; second procedure: a is not equal to b, so second case is called
; evaluating (dec a) and (inc b): 3, 6, recursive call to itself
; state stored in a counter
; iterative