;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)
;; tip : Number Number -> Number
;; Calculates the amount of tip in USD using Amount of bill 
;; & Percentage of tip
;; Examples : 
; (tip 10 0.15) => 1.5
; (tip 20 0.17) => 3.4

(define (tip Amount Tip-Percent)
  (* Amount Tip-Percent))

;; Tests 
(define-test-suite tip-Test
  (check-equal? (tip 10 0.15) 1.5 "Wrong Tip")
  (check-equal? (tip 20 0.17) 3.4 "Wrong Tip")
  (check-equal? (tip 50 0.75) 37.5 "Wrong Tip"))

(run-tests tip-Test)