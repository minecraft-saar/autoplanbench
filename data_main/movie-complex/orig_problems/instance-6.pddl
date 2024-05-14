(define (problem movie-2-5)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
p1 
p2 
z1 
k1 
k2 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(pop p1)

(pop p2)

(cheese z1)

(crackers k1)

(crackers k2)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-dip) 
(have-pop) 
(have-cheese) 
(have-chips) 
(have-crackers) 

)

)

)
