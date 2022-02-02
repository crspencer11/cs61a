(define-macro (def func args body)
  `(define ,func(lambda ,args ,body)))

(define (tail-replicate x n)
  (define (helper a b)
    (if (= a n)
      b
      (helper (+ a 1) (cons x b))))
  (helper 0 nil))
    
      
  ;     (helper x list-so-far(- n 1))
  ; (helper (cons x (cons list nil)) n)))
   

(define (exp b n)
  (define (helper b n total)
    (if (zero? n)
      total
      (helper b (- n 1) (* total b))))
  (helper b n 1))