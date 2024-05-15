(define (problem movie-6-4)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
d2 
d3 
p1 
p2 
z1 
z2 
z3 
z4 
k1 
k2 
k3 
k4 
)

(:init

(chips c1)

(dip d1)

(dip d2)

(dip d3)

(pop p1)

(pop p2)

(cheese z1)

(cheese z2)

(cheese z3)

(cheese z4)

(crackers k1)

(crackers k2)

(crackers k3)

(crackers k4)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-crackers) 
(have-cheese) 
(have-pop) 

)

)

)
