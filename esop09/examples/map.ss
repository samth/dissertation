(define (map f as . bss)
  (if (or (null? as)
	  (ormap null? bss))
      null
      (cons (apply f (car as) (map car bss))
	    (apply map f (cdr as) (map cdr bss)))))
