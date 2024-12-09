(define (problem movie-5-3)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
d2 
d3 
d4 
p1 
p2 
p3 
p4 
p5 
z1 
z2 
k1 
k2 
k3 
k4 
k5 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(dip d2)

(dip d3)

(dip d4)

(pop p1)

(pop p2)

(pop p3)

(pop p4)

(pop p5)

(cheese z1)

(cheese z2)

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
(have-dip) 
(have-pop) 

)

)

)
