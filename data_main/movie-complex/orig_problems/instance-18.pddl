(define (problem movie-4-4)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
c3 
c4 
d1 
d2 
p1 
p2 
p3 
z1 
k1 
k2 
k3 
k4 
)

(:init

(chips c1)

(chips c2)

(chips c3)

(chips c4)

(dip d1)

(dip d2)

(pop p1)

(pop p2)

(pop p3)

(cheese z1)

(crackers k1)

(crackers k2)

(crackers k3)

(crackers k4)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-pop) 
(have-cheese) 
(have-chips) 

)

)

)
