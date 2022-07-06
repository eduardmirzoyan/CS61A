(define (my-filter func lst) 
  (if (null? lst)
    lst
    (if (func (car lst))
      (cons (car lst) (my-filter func (cdr lst)))
      (my-filter func (cdr lst))
    )
  )
)

(define (interleave s1 s2) 
  (cond
    ((and (not (null? s1)) (not (null? s2)) )
      (cons 
       (car s1) 
       (interleave s2 (cdr s1))
      )
    )
    ((null? s1)
      s2
    )
    ((null? s2)
      s1
    )
  )

)

(define (accumulate merger start n term)
  (cond 
    ((= n 1) ; If n == 0
      (term n)
    )
    ((> start 0)
      (merger start (accumulate merger 0 n term))
    )
    (else 
      (merger (term n) (accumulate merger start (- n 1) term) )
    )
  )
)

(define (no-repeats lst) 
  (cond 
    ( (null? lst)
      lst
    )
    (else
      (cons 
        (car lst) 
        (no-repeats 
          (my-filter (lambda (x) (not (= x (car lst))) ) (cdr lst))
        ) 
      )
    )
  )
)
