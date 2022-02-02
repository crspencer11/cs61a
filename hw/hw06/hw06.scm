; Question 1
; 
(define (cddr s) (cdr (cdr s)))

(define (cadr s) (cdr (car s)))

(define (caddr s) (cdr (cdr (car s))))

; Question 2
; 
(define (square x) (* x x))

(define (pow base exp)
  (if (zero? exp) 1
    (if (even? exp) (square (pow base(/ exp 2)))
      (if (odd? exp) (* base (pow base (- exp 1))))))
)

; Question 3
; 
(define (filter-lst func lst)
  (cond ((null? lst) '())
        ((func (car lst)) (cons (car lst)(filter-lst func (cdr lst))))
        (else (filter-lst func (cdr lst)))
  )
)

; ;; Tests
(define (even? x) (= (modulo x 2) 0))

(filter-lst even? '(0 1 1 2 3 5 8))

; expect (0 2 8)
; Question 4
; FROM HW 01!!!
; def accumulate2(merger, base, n, term):
;     if n == 0:
;         return base
;     return merger(term(n), accumulate2(merger, base, n-1, term))
; 
(define (accumulate merger start n term)
  (if (zero? n) start
    (merger (term n) (accumulate merger start (- n 1) term)))
)
 

; Question 5
; 
(define (without-duplicates lst)
  (if (null? lst) lst
    (cons (car lst)
    (without-duplicates(filter-lst (lambda (x) (not(= x (car lst))))(cdr lst))))))


; Question 7
; 
(define (accumulate-tail merger start n term)
  (define (helper num total)
    (if (> num n) total
      (helper (+ num 1) (merger total(term num)))))
  (helper 1 start))
  

  
    

; Optional Question
; 
(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

; derive returns the derivative of EXPR with respect to VAR
(define (derive expr var)
  (cond 
    ((number? expr)
     0)
    ((variable? expr)
     (if (same-variable? expr var)
         1
         0))
    ((sum? expr)
     (derive-sum expr var))
    ((product? expr)
     (derive-product expr var))
    ((exp? expr)
     (derive-exp expr var))
    (else
     'Error)))

; Variables are represented as symbols
(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eqv? v1 v2)))

; Numbers are compared with =
(define (=number? expr num)
  (and (number? expr) (= expr num)))

; Sums are represented as lists that start with +.
(define (make-sum a1 a2)
  (cond 
    ((=number? a1 0)                 a2)
    ((=number? a2 0)                 a1)
    ((and (number? a1) (number? a2)) (+ a1 a2))
    (else                            (list '+ a1 a2))))

(define (sum? x)
  (and (list? x) (eqv? (car x) '+)))

(define (first-operand s) (cadr s))

(define (second-operand s) (caddr s))

; Products are represented as lists that start with *.
(define (make-product m1 m2)
  (cond 
    ((or (=number? m1 0) (=number? m2 0))
     0)
    ((=number? m1 1)
     m2)
    ((=number? m2 1)
     m1)
    ((and (number? m1) (number? m2))
     (* m1 m2))
    (else
     (list '* m1 m2))))

(define (product? x)
  (and (list? x) (eqv? (car x) '*)))

; You can access the operands from the expressions with
; first-operand and second-operand
(define (first-operand p) (cadr p))

(define (second-operand p) (caddr p))

(define (derive-sum expr var) 'YOUR-CODE-HERE)

(define (derive-product expr var) 'YOUR-CODE-HERE)

; Exponentiations are represented as lists that start with ^.
(define (make-exp base exponent) 'YOUR-CODE-HERE)

(define (exp? exp) 'YOUR-CODE-HERE)

(define x^2 (make-exp 'x 2))

(define x^3 (make-exp 'x 3))

(define (derive-exp exp var) 'YOUR-CODE-HERE)
