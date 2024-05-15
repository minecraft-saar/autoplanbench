(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
p1 
z1 
z2 
k1 
k2 
k3 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(pop p1)

(cheese z1)

(cheese z2)

(crackers k1)

(crackers k2)

(crackers k3)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-pop) 
(have-crackers) 

)

)

)
