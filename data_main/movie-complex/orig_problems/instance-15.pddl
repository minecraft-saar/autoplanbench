(define (problem movie-3-2)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
c3 
d1 
d2 
p1 
p2 
p3 
z1 
z2 
z3 
k1 
)

(:init

(chips c1)

(chips c2)

(chips c3)

(dip d1)

(dip d2)

(pop p1)

(pop p2)

(pop p3)

(cheese z1)

(cheese z2)

(cheese z3)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-pop) 

)

)

)
