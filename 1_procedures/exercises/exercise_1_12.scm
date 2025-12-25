; exercise 1.12
; Pascal's triangle

; f(m, n) = f(m-1, n-1) + f(m-1, n) if n!=1 and n!=m
; f(m, n) = 1 if n=1 or n=m

(define (pascal m n)
  (cond ((or (= n 1) (= n m)) 1)
        ((or (> n m) (<= n 0) (<= m 0)) 0)
        (else (+ (pascal (- m 1) (- n 1)) (pascal (- m 1) n)))))