#!/usr/bin/env csi -ss

(define (square x)
  (* x x))

(define (range low high) 
  (if (> low high)
      '()
      (cons low (range (+ low 1) high))))

(define (main args)
  (map print* (intersperse (map square (range 1 20)) ", "))
  (newline))
