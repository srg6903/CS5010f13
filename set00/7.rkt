;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; circumference : Number -> Number
;; Computes the circuference of a circle , 
;; provided the radius of a circle is given.
;; Examples :
;; (circumference 1) =>  
;; (circumference 0) => 0

(define PI-CONSTANT 3.141)

(define (circumference radius)
  (* 2 PI-CONSTANT radius))

;; Tests
(define-test-suite circumference-Test
  (check-equal? (circumference 1) 6.282 " Incorrect Circumference")
  (check-equal? (circumference 0) 0 " Incorrect Circumference"))

(run-tests circumference-Test)