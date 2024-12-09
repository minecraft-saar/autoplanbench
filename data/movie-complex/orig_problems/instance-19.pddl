(define (problem movie-4-4)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
p1 
z1 
k1 
k2 
k3 
k4 
)

(:init

(chips c1)

(dip d1)

(pop p1)

(cheese z1)

(crackers k1)

(crackers k2)

(crackers k3)

(crackers k4)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-dip) 
(have-pop) 
(have-crackers) 

)

)

)
