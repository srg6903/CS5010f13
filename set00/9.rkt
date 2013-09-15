;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
;; remainder : Number Number -> Number
;; Returns the remainder when dividing the arguments.
(string-append "Remainder")
(remainder 7 2)

(remainder -17 3)

;; modulo : Number Number -> Number
;; Returns the quotient "q" with the sign same as 2nd argument where,
;; 1) (abs q) is between 0 (inclusive) and (abs m) (exclusive), and
;; 2) the difference between q and (- n (* m (quotient n m))) is a multiple of m.
(string-append "Modulo")
(modulo 6 2)

(modulo 10.0 -3)

;; Predicate even? => Checks whether the number is even or not
;; check-even? : Number -> Boolean
;; Returns true when given value is even , else false

;; Examples :
;; (check-even? 2) => true
;; (check-even? 5) => false

(define (check-even? value)
  (cond
    [(= (modulo value 2) 0) true ]
    [else false]))

;; Tests :
(define-test-suite even?-Test
  (check-equal? (check-even? 2) true "Error")
  (check-equal? (check-even? 5) false "Error"))

(run-tests even?-Test)