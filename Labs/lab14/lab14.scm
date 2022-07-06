(define (split-at lst n) 
    (define (helper new old n)
        (cond 
            ((> n (length old))
                (append (list old) nil)
            )
            ((= n 0)
                (append (list new) old)
            )
            (else 
                (helper (append new (list (car old))) (cdr old) (- n 1))
            )
        )
    )
    (helper nil lst n)
)

(define (compose-all funcs)
    
    (define (helper value funcs)
        (if (null? funcs)
            value
            (helper ((car funcs) value) (cdr funcs))
        )
    )
    (lambda (x) (helper x funcs))
)
