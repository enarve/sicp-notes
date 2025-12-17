; cond
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

; if
(define (abs x)
  (if (< x 0)
      (- x)
      x))

; (and (> x 5) (< x 10))

(define (>= x y)
  (or (= x y) (> x y)))

(define (>= x y) (not (< x y)))