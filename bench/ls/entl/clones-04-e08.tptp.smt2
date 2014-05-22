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

(declare-fun nil () Sll_t)

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
(assert
  (and 
    (= nil nil)
(distinct nil x1 )
(distinct nil x2 )
(distinct nil x3 )
(distinct x1 x3 )
(distinct x2 x3 )
(distinct nil x5 )
(distinct nil x6 )
(distinct nil x7 )
(distinct x5 x7 )
(distinct x6 x7 )
(distinct nil x9 )
(distinct nil x10 )
(distinct nil x11 )
(distinct x9 x11 )
(distinct x10 x11 )
(distinct nil x13 )
(distinct nil x14 )
(distinct nil x15 )
(distinct x13 x15 )
(distinct x14 x15 )
    (tobool  (ssep  (ls x14 x13 ) (ssep  (pto x15  (ref f x14 ) ) (ssep  (pto x13  (ref f x15 ) ) (ssep  (ls x10 x9 ) (ssep  (pto x11  (ref f x10 ) ) (ssep  (pto x9  (ref f x11 ) ) (ssep  (ls x6 x5 ) (ssep  (pto x7  (ref f x6 ) ) (ssep  (pto x5  (ref f x7 ) ) (ssep  (ls x2 x1 ) (ssep  (pto x3  (ref f x2 ) ) (ssep  (pto x1  (ref f x3 ) )(ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))))))))))))))
  )
)
(assert
  (not
        (tobool  (ssep  (pto x16  (ref f x15 ) ) (ssep  (ls x14 x16 ) (ssep  (pto x15  (ref f x14 ) ) (ssep  (pto x12  (ref f x11 ) ) (ssep  (ls x10 x12 ) (ssep  (pto x11  (ref f x10 ) ) (ssep  (pto x8  (ref f x7 ) ) (ssep  (ls x6 x8 ) (ssep  (pto x7  (ref f x6 ) ) (ssep  (pto x4  (ref f x3 ) ) (ssep  (ls x2 x4 ) (ssep  (pto x3  (ref f x2 ) )(ssep (pto x_emp (ref f y_emp)) (pto z_emp (ref f t_emp))))))))))))))))
  ))

(check-sat)
