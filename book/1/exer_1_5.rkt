; test whether the
; interpret is using
; applicative order evaluation
; or normal-order evaluation

;#lang sicp
#lang lazy

(define (p) (p))
; infinite recursive function

(define (test x y)
    (if (= x 0) 0 y))

(test 0 (p))

(eval (p))

; intepreter uses
; applicative-order evaluation
; because it will try to evaluate
; (p), putting it into a infinite loop
