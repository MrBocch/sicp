#lang sicp

; observe that our model of evaluation
; allows for combinations whose
; operators are compound expressions.

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; if b > 0 , evaluates  to
; (+ a b)  , else
; (- a b)  , meaning for example a = 1, b = -2
; 1 - -2 = 3
; had no idea you can do that
