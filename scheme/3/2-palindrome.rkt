#lang racket
(require rackunit)
(require rackunit/text-ui)


; Искаме да проверим дали дадено число е палиндром.


(define tests (test-suite
  "Palindrome tests"

  (check-true (palindrome? 1))
  (check-false (palindrome? 10))
  (check-true (palindrome? 101))
  (check-true (palindrome? 121))
  (check-false (palindrome? 122))
  (check-false (palindrome? 221))
  (check-false (palindrome? 1220))
  (check-true (palindrome? 1221))
  (check-false (palindrome? 12210))
  (check-true (palindrome? 1234321))
  (check-true (palindrome? 12344321))
  (check-false (palindrome? 123421))
  (check-false (palindrome? 124321))
))

(run-tests tests 'verbose)
