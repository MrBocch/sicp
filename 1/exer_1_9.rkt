#lang sicp

(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))
; (+ 4 5)
; (inc (+ (dec 4) b)
;   (inc (+ (dec 3) b))
;     (inc (+ (dec 2) b))
;       (inc (+ (dec 1) b))
; (inc (inc (inc (inc b)))) kinda hard to see why this happns
; 9
(+ 4 5)

(define (v2 a b)
    (if (= a 0)
        b
        (v2 (dec a) (inc b))))
; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
