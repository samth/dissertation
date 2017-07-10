(: fold-left
   (All (gamma alpha beta ...) ((gamma alpha beta ... -> gamma) gamma (Listof alpha) (Listof beta) ... -> gamma)))
(define (fold-left f c as . bss)
  (if (or (null? as) (ormap null? bss)) 
      c
      (apply fold-left (apply f c (car as) (map car bss)) (cdr as)
	     (map cdr bss))))