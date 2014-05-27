(set-logic QF_S)
(set-info :source |
A. Rybalchenko and J. A. Navarro Pérez.
[Separation Logic + Superposition Calculus = Heap Theorem Prover]
[PLDI 2011]
http://navarroj.com/research/papers.html#pldi11
|)
(set-info :smt-lib-version 2.0)
(set-info :category "random") 
(set-info :status unknown)
(set-info :version 2014-05-22)

(set-logic QF_NOLL)

(declare-sort Sll_t 0)

(declare-fun f () (Field Sll_t Sll_t))

(define-fun ls ((?in Sll_t) (?out Sll_t)) Space
(tospace (or (= ?in ?out)
(exists ((?u Sll_t))
(and (distinct ?in ?out) (tobool
(ssep (pto ?in (ref f ?u)) (ls ?u ?out)
)))))))

(declare-fun x_emp () Sll_t)
(declare-fun y_emp () Sll_t)
(declare-fun z_emp () Sll_t)
(declare-fun t_emp () Sll_t)
(declare-fun x0 () Sll_t)
(declare-fun x1 () Sll_t)
(declare-fun x2 () Sll_t)
(declare-fun x3 () Sll_t)
(declare-fun x4 () Sll_t)
(declare-fun x5 () Sll_t)
(declare-fun x6 () Sll_t)
(declare-fun x7 () Sll_t)
(declare-fun x8 () Sll_t)
(declare-fun x9 () Sll_t)
(declare-fun x10 () Sll_t)
(declare-fun x11 () Sll_t)
(declare-fun x12 () Sll_t)
(declare-fun x13 () Sll_t)
(declare-fun x14 () Sll_t)
(declare-fun x15 () Sll_t)
(declare-fun x16 () Sll_t)
(declare-fun x17 () Sll_t)
(declare-fun x18 () Sll_t)
(declare-fun x19 () Sll_t)
(declare-fun x20 () Sll_t)
(declare-fun x21 () Sll_t)
(declare-fun x22 () Sll_t)
(declare-fun x23 () Sll_t)
(assert
  (and 
    (= nil nil)
(distinct x11 x13 )
(distinct x11 x19 )
(distinct x3 x5 )
(distinct x7 x18 )
(distinct x7 x9 )
(distinct x7 x15 )
(distinct x9 x11 )
(distinct x9 x12 )
(distinct x9 x14 )
(distinct x12 x15 )
(distinct x17 x19 )
(distinct x2 x8 )
(distinct x2 x11 )
(distinct x2 x13 )
(distinct x2 x15 )
(distinct x2 x5 )
(distinct x4 x16 )
(distinct x1 x5 )
(distinct x16 x19 )
(distinct x10 x19 )
(distinct x10 x17 )
(distinct x10 x14 )
(distinct x13 x14 )
(distinct x5 x10 )
    (tobool  (ssep  (ls x13 x9 ) (ssep  (ls x13 x11 ) (ssep  (ls x19 x7 ) (ssep  (ls x19 x11 ) (ssep  (ls x16 x13 ) (ssep  (ls x18 x2 ) (ssep  (ls x18 x19 ) (ssep  (ls x1 x12 ) (ssep  (ls x14 x9 ) (ssep  (ls x14 x18 ) (ssep  (ls x15 x6 ) (ssep  (ls x9 x18 ) (ssep  (ls x7 x3 ) (ssep  (ls x11 x4 )(ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))))))))))))))))
  )
)
(assert
  (not
    (and (distinct x1 x1 )    (tobool (ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))
)  ))

(check-sat)
