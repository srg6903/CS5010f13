;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
;; remainder : integer integer -> integer
;; Returns the remainder when dividing the arguments.
(string-append "Remainder")
(remainder 7 2)

(remainder -17 3)


;; Predicate even? => Checks whether the number is even or not
;; check-even? : Number -> Boolean
;; Returns true when given value is even , else false

;; Examples :
;; (check-even? 2) => true
;; (check-even? 5) => false

(define (check-even? value)
  (cond
    [(= (remainder value 2) 0) true ]
    [else false]))

;; Tests :
(define-test-suite even?-Test
  (check-equal? (check-even? 2) true "Error")
  (check-equal? (check-even? 5) false "Error"))

(run-tests even?-Test)