;; assumes \scheme|binary-+|, a binary addition operator
(define (+ . xs)
  (if (null? xs) 0 (binary-+ (car xs) (apply + (cdr xs)))))
