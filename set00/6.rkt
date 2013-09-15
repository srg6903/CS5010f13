;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
;; quadratic-root : Number Number Number => Number
;; Returns the root of a quadratic equation
;; Examples :
;; (quadratic-root 1 -3 2)
;; (quadratic-root 2 4 -30)

(define (quadratic-root a b c)
  (/ (+ (- 0 b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a)))

;; Tests 
(define-test-suite quadratic-root-test
  (check-equal? (quadratic-root 1 -3 2) 2 "Incorrect Roots")
  (check-equal? (quadratic-root 2 4 -30) 3 "Incorrect Roots"))

(run-tests quadratic-root-test)
