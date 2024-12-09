(define (problem movie-4-5)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
p1 
p2 
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

(pop p2)

(cheese z1)

(crackers k1)

(crackers k2)

(crackers k3)

(crackers k4)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-chips) 
(have-dip) 
(have-pop) 

)

)

)
