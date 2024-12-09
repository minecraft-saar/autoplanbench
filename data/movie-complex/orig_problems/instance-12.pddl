(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
d2 
p1 
p2 
z1 
z2 
z3 
k1 
k2 
k3 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(dip d2)

(pop p1)

(pop p2)

(cheese z1)

(cheese z2)

(cheese z3)

(crackers k1)

(crackers k2)

(crackers k3)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-pop) 
(have-crackers) 
(have-cheese) 

)

)

)
