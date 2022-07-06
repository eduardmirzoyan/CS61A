(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ordered? s)   
    ( if (null? (cdr s))
        #t
        ( and
            (or 
                (< (car s) (car (cdr s)) )  
                (= (car s) (car (cdr s)) )
            ) 
            (ordered? (cdr s) )
        )  
    )   
)

(define (square x) (* x x))

(define (pow base exp) 

    (cond
        ((= exp 0) 
            1
        )
        ((even? exp) 
            (square 
                (pow base (/ exp 2))
            )
        )
        ((odd? exp) 
            (* base (pow base (- exp 1)))
        )
    )
)
