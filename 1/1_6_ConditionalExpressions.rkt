#lang sicp

(define (abs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (- x)) ))

(define (abs2 x)
    (cond ((< x 0) (- x))
          (else x)))

(define (abs3 x)
    (if (< x 0)
        (- x)
        x))

(abs3 1)
(abs3 0)
(abs3 (- 1))

(define x 6)

(and (> x 5) (< x 10))

(define (>= x y)
    (or (> x y)
        (= x y)))
(>= 0 1)
