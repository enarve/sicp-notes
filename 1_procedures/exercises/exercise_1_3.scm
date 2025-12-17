; exercise 1.3

(define (square x) (* x x))
(define (min-of-two x y) (if (< x y) x y))
(define (min x y z) (min-of-two (min-of-two x y) z))

(define (sum-of-squares x y z)
  (cond ((= (min x y z) x) (+ (square y) (square z)))
        ((= (min x y z) y) (+ (square x) (square z)))
        ((= (min x y z) z) (+ (square x) (square y))))
)