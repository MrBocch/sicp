#lang sicp

(define (factorial n)
    (if (= n 1)
        1
        (* n (factorial (- n 1)))))

(define (factorial2 n)
    (define (fact n col)
        (if (= n 1)
            col
            (fact (- n 1) (* n col))))
    (fact n 1)
)

(define (factorial3 n)
    (define (fact3 col i)
        (if (= i n)
            (* col n)
            (fact3 (* col i)
                   (+ i 1))))

    (fact3 1 1)
)

(factorial3 5)
(factorial2 5)
(factorial 5)
