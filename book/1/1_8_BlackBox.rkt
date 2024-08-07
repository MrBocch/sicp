#lang sicp

(define (sqrt x)
    (define (square x) (* x x))

    (define (good-enough? guess x)
        (< (abs (- (square guess) x))
            0.001))

    (define (average x y)
        (/ (+ x y) 2))

    (define (improve guess x)
        (average guess (/ x guess)))

    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

    (sqrt-iter 1.0 x)
)
(define (sqrt2 x)
    (define (square) (* x x))

    (define (good-enough? guess)
        (< (abs (- (square guess) x))
            0.001))

    (define (average y)
        (/ (+ x y) 2))

    (define (improve guess)
        (average guess (/ x guess)))

    (define (sqrt-iter guess)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))

    (sqrt-iter 1.0 x)
)

(sqrt 5)
