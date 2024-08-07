#lang racket

(define (square x) (* x x))

(define (sum-of-square x y)
    (+ (square x) (square y)))

(define (exe a b c)
    ;(define lst (cons a (cons b (cons c '()))))
    (define lst (list 1 2 3))
    (define (top2)
        (take (sort lst <) 2))
    (sum-of-square (car (top2)) (cadr (top2)) )
    )

(exe 1 2 1)
