;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Convert Fahrenheit temperature to Celcius using the formula C = (F-32)*(5/9)

(require rackunit)
(require rackunit/text-ui)
;; f->c : Number -> Numer
;; A temperature in degrees Fahrenheit as an argument returns
;; the equivalent temperature in Celcius.
;; Examples :
;; (f->c 32) => 0
;; (f->c 100) => 37.77777777777778

;; Strategy : Domain Knowledge

(define (f->c f)
  (* (- f 32) (/ 5 9)))

;; Tests 
(define-test-suite f2c-Test
  (check-= (f->c 32) 0 2)
  (check-= (f->c 100) 37.77 2))

(run-tests f2c-Test)