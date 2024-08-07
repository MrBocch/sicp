#lang sicp
;#lang lazy

(define (new-if predicate nthen nelse)
    (cond (predicate nthen)
          (else nelse)
        ))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (square x)
    (* x x))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 100)
