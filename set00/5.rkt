;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
;; sq : Number -> Number
;; Returns the sqare of the input number
;; Examples :
;; (sq 5)
;; (sq 10)

(define (sq value)
  (sqr value))

;; Tests
(define-test-suite sq-Test
  (check-equal? (sq 5) 25 "Error in calculation")
  (check-equal? (sq 10) 100 "Error in calculation"))

(run-tests sq-Test)
