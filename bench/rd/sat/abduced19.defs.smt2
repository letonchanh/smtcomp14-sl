(set-logic QF_S)
(set-info :source |
  James Brotherston, Nikos Gorogiannis, and Rasmus Petersen
  A Generic Cyclic Theorem Prover. APLAS, 2012.
  https://github.com/ngorogiannis/cyclist
|)
(set-info :smt-lib-version 2.0)
(set-info :category "crafted")
(set-info :status unknown)
(set-info :version "2014-05-28")



;generic sort 

(declare-sort GTyp 0)

;generic fields 
(declare-fun f0 () (Field GTyp GTyp))
(declare-fun f1 () (Field GTyp GTyp))

;predicates 

(define-fun ls ((?a GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I001 ?a)
		)
	)
))
)


(define-fun I244973 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp) (?j GTyp)) Space 
(I47338 ?a ?b ?c ?d ?e ?f ?g ?h ?j))


(define-fun I63983 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?i)
			(tobool 
	(ssep (pto ?i  (ref f0 ?a') )
		(I244973 ?a ?b ?c ?d ?e ?f ?g ?h ?i ?a')
	)

		))
	))
)


(define-fun I63984 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 
(I1444 ?a ?b ?c ?d ?e ?i))


(define-fun I47338 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp) (?i GTyp)) Space 
(tospace (or 

	(and (= nil ?i)
		 (tobool (I63984 ?a ?b ?c ?d ?e ?f ?g ?h ?i)
		)
	)


	(and (distinct nil ?i)
		 (tobool (I63983 ?a ?b ?c ?d ?e ?f ?g ?h ?i)
		)
	)
))
)


(define-fun I12228 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?h)
			(tobool 
	(ssep (pto ?h  (ref f0 ?a') )
		(I47338 ?a ?b ?c ?d ?e ?f ?g ?h ?a')
	)

		))
	))
)


(define-fun I12229 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 
(I1444 ?a ?b ?c ?d ?e ?h))


(define-fun I8423 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp) (?h GTyp)) Space 
(tospace (or 

	(and (= nil ?h)
		 (tobool (I12229 ?a ?b ?c ?d ?e ?f ?g ?h)
		)
	)


	(and (distinct nil ?h)
		 (tobool (I12228 ?a ?b ?c ?d ?e ?f ?g ?h)
		)
	)
))
)


(define-fun I8387 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?g)
			(tobool 
	(ssep (pto ?g  (ref f0 ?a') )
		(I8423 ?a ?b ?c ?d ?e ?f ?g ?a')
	)

		))
	))
)


(define-fun I8388 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(I1444 ?a ?b ?c ?d ?e ?g))


(define-fun I8362 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(tospace (or 

	(and (= nil ?g)
		 (tobool (I8388 ?a ?b ?c ?d ?e ?f ?g)
		)
	)


	(and (distinct nil ?g)
		 (tobool (I8387 ?a ?b ?c ?d ?e ?f ?g)
		)
	)
))
)


(define-fun I1443 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?f)
			(tobool 
	(ssep (pto ?f  (ref f0 ?a') )
		(I8362 ?a ?b ?c ?d ?e ?f ?a')
	)

		))
	))
)


(define-fun I2376 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp) (?g GTyp)) Space 
(I1444 ?g ?b ?c ?d ?e ?f))


(define-fun I1463 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I2376 ?a ?b ?c ?d ?e ?f ?a')
	)

		))
	))
)


(define-fun I1444 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(tospace (or 

	(= ?a ?f)


	(and (distinct ?a ?f)
		 (tobool (I1463 ?a ?b ?c ?d ?e ?f)
		)
	)
))
)


(define-fun I1401 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(tospace (or 

	(and (= nil ?f)
		 (tobool (I1444 ?a ?b ?c ?d ?e ?f)
		)
	)


	(and (distinct nil ?f)
		 (tobool (I1443 ?a ?b ?c ?d ?e ?f)
		)
	)
))
)


(define-fun I182 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?e)
			(tobool 
	(ssep (pto ?e  (ref f0 ?a') )
		(I1401 ?a ?b ?c ?d ?e ?a')
	)

		))
	))
)


(define-fun I381 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp) (?f GTyp)) Space 
(I183 ?f ?b ?c ?d ?e))


(define-fun I196 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I381 ?a ?b ?c ?d ?e ?a')
	)

		))
	))
)


(define-fun I183 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I196 ?a ?b ?c ?d ?e)
		)
	)
))
)


(define-fun I166 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(tospace (or 

	(and (= nil ?e)
		 (tobool (I183 ?a ?b ?c ?d ?e)
		)
	)


	(and (distinct nil ?e)
		 (tobool (I182 ?a ?b ?c ?d ?e)
		)
	)
))
)


(define-fun I046 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?d)
			(tobool 
	(ssep (pto ?d  (ref f0 ?a') )
		(I166 ?a ?b ?c ?d ?a')
	)

		))
	))
)


(define-fun I063 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp) (?e GTyp)) Space 
(I047 ?e ?b ?c ?d))


(define-fun I056 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I063 ?a ?b ?c ?d ?a')
	)

		))
	))
)


(define-fun I047 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 
(tospace (or 

	(= nil ?a)


	(and (distinct nil ?a)
		 (tobool (I056 ?a ?b ?c ?d)
		)
	)
))
)


(define-fun I034 ((?a GTyp) (?b GTyp) (?c GTyp) (?d GTyp)) Space 
(tospace (or 

	(and (= nil ?d)
		 (tobool (I047 ?a ?b ?c ?d)
		)
	)


	(and (distinct nil ?d)
		 (tobool (I046 ?a ?b ?c ?d)
		)
	)
))
)


(define-fun I021 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?c)
			(tobool 
	(ssep (pto ?c  (ref f0 ?a') )
		(I034 ?a ?b ?c ?a')
	)

		))
	))
)


(define-fun I022 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 
(I008 ?b ?c))


(define-fun I013 ((?a GTyp) (?b GTyp) (?c GTyp)) Space 
(tospace (or 

	(and (= nil ?c)
		 (tobool (I022 ?a ?b ?c)
		)
	)


	(and (distinct nil ?c)
		 (tobool (I021 ?a ?b ?c)
		)
	)
))
)


(define-fun I007 ((?a GTyp) (?b GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?b)
			(tobool 
	(ssep (pto ?b  (ref f0 ?a') )
		(I013 ?a ?b ?a')
	)

		))
	))
)


(define-fun I008 ((?a GTyp) (?b GTyp)) Space 
emp)


(define-fun I003 ((?a GTyp) (?b GTyp)) Space 
(tospace (or 

	(and (= nil ?b)
		 (tobool (I008 ?a ?b)
		)
	)


	(and (distinct nil ?b)
		 (tobool (I007 ?a ?b)
		)
	)
))
)


(define-fun I001 ((?a GTyp)) Space 

	(tospace (exists ((?a' GTyp))
		
		 (and (distinct nil ?a)
			(tobool 
	(ssep (pto ?a  (ref f0 ?a') )
		(I003 ?a ?a')
	)

		))
	))
)


;vars 

;problem 
(declare-fun x0 () GTyp)

(assert (tobool (ls  x0)))

(check-sat)

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1

;;pto 1
