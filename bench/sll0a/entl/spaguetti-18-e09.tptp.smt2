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
(assert
  (and 
    (= nil nil)
(distinct x11 x12 )
(distinct x11 x14 )
(distinct x7 x8 )
(distinct x7 x18 )
(distinct x2 x6 )
(distinct x2 x8 )
(distinct x2 x15 )
(distinct x1 x8 )
(distinct x1 x3 )
(distinct x1 x9 )
(distinct x1 x16 )
(distinct x13 x14 )
(distinct x16 x17 )
(distinct x6 x8 )
(distinct x6 x10 )
(distinct x3 x12 )
(distinct x9 x16 )
(distinct x9 x13 )
(distinct x9 x17 )
(distinct x12 x17 )
(distinct x15 x17 )
(distinct x14 x15 )
(distinct x8 x14 )
(distinct x4 x7 )
(distinct x4 x16 )
(distinct x10 x11 )
(distinct x5 x18 )
(distinct x5 x10 )
    (tobool  (ssep  (ls x13 x7 ) (ssep  (ls x13 x4 ) (ssep  (ls x13 x6 ) (ssep  (ls x10 x8 ) (ssep  (ls x18 x14 ) (ssep  (ls x18 x6 ) (ssep  (ls x8 x5 ) (ssep  (ls x17 x5 ) (ssep  (ls x17 x16 ) (ssep  (ls x2 x3 ) (ssep  (ls x9 x17 ) (ssep  (ls x7 x10 ) (ssep  (ls x3 x13 ) (ssep  (ls x3 x10 ) (ssep  (ls x11 x15 )(ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp)))))))))))))))))))
  )
)
(assert
  (not
    (and (distinct x1 x1 )    (tobool (ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))
)  ))

(check-sat)
