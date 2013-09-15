;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require rackunit)
(require rackunit/text-ui)

;; Add-Two-Larger-Numbers : Number Number Number -> Number
;; Computers the sum of two larger numbers out of three numbers a,b,c provided.

;; Examples :
;; (Add-Two-Larger-Numbers 2 5 7) => 12
;; (Add-Two-Larger-Numbers 20 10 1) => 30
;; (Add-Two-Larger-Numbers -20 1 20) => 21
;; (Add-Two-Larger-Numbers 4 4 5) => 9

(define (Add-Two-Larger-Numbers a b c)
  (cond
    [(and (<= a b) (<= a c)) (+ b c) ]
    [(and (<= b a) (<= b c)) (+ a c) ]
    [else (+ a b) ]))

;; Tests :
(define-test-suite make-tests
  (check-equal? (Add-Two-Larger-Numbers 2 5 7) 12 "Worng Total")
  (check-equal? (Add-Two-Larger-Numbers 20 10 1) 30  "Worng Total")
  (check-equal? (Add-Two-Larger-Numbers -20 1 20) 21  "Worng Total")
  (check-equal? (Add-Two-Larger-Numbers 4 4 5) 9  "Worng Total"))

(run-tests make-tests)