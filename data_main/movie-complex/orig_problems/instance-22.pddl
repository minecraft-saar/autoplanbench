(define (problem movie-5-3)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
p1 
p2 
p3 
p4 
p5 
z1 
z2 
z3 
k1 
k2 
k3 
k4 
k5 
)

(:init

(chips c1)

(dip d1)

(pop p1)

(pop p2)

(pop p3)

(pop p4)

(pop p5)

(cheese z1)

(cheese z2)

(cheese z3)

(crackers k1)

(crackers k2)

(crackers k3)

(crackers k4)

(crackers k5)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-pop) 

)

)

)
