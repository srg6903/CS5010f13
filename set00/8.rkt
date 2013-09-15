;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; Area of a Circle : ( 3.1415*r*r)

;; circ-area : Nummber -> Number
;; Returns the area of a circle having radius r.
;; Assume PI value => 3.1415

;; Exampes:
;; (circ-area 1) =>
;; (circ-area 5) =>
;; (circ-area 7) =>

(define (circ-area r)
  (* 3.1415 (sqr r)))

;; Tests :
(define-test-suite area-Test
  (check-equal? (circ-area 1) 3.1415 "Incorrect Area")
  (check-equal? (circ-area 5) 78.5375 "Incorrect Area")
  (check-equal? (circ-area 7) 153.9335 "Incorrect Area"))

(run-tests area-Test)