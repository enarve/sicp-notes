; exercise 1.11
; f(n-1)+2f(n-2)+3f(n-3) if n>=3, n if n<3

; recursive
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

; iterative
; a <- a + 2b + 3c
; b <- a
; c <- b
(define (f n)
  (f-iter n 4 2 1))

(define (f-iter n a b c)
  (cond ((= n 1) c)
        ((= n 2) b)
        ((= n 3) a)
        (else (f-iter (- n 1) (+ a (* 2 b) (* 3 c)) a b))))