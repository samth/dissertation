(define (map-with-funcs . fs)
  (lambda as
    (map (lambda (f)
	   (apply f as))
	 fs)))