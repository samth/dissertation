(: play-one-turn (Player Cards Cards Hand ->
		  (values Boolean RCard Hand Attacks From))) 
(define (play-one-turn player deck stck fst:discs) 
  (define trn (create-turn (player-name player) deck stck fst:discs))
  ;; --- go play 
  (define res (player-take-turn player trn))
  ;; the-return-card could be false
  (define-values (the-end the-return-card)
    (cond
     [(ret? res) (values #f (ret-card res))]
     [(end? res) (values #t (end-card res))]))
  (define discards:squadrons  (done-discards res))
  (define attacks  (done-attacks res))
  (define et (turn-end trn))
  (values the-end the-return-card discards:squadrons attacks et))
