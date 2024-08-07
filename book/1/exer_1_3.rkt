; define a procedure that
; takes three numbers as arguments
; and returns the sum of squares
; of the two larger numbers

#lang sicp

(define (square x) (* x x))

(define (sum-of-square x y)
    (+ (square x) (square y)))

(define (exe a b c)
    (cond ((and (> a b) (> b c)) (sum-of-square a b))
          ((and (> a b) (> c b)) (sum-of-square a c))
          ((and (> b a) (> c a)) (sum-of-square b c))
          ((and (> b a) (> a c)) (sum-of-square b a))
          (else "fucked up")
    )
)

(define (exe2 a b c)
    (cond ((= (min a b c) a) (sum-of-square b c))
          ((= (min a b c) b) (sum-of-square a c))
          ((= (min a b c) c) (sum-of-square a b))))

(exe 1 2 1)
(exe2 1 2 1)

; another solution
; sort the list
; take n amount (this case 2)
; pipe into function
