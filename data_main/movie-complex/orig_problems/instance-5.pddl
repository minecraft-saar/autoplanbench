(define (problem movie-1-3)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
p1 
z1 
k1 
)

(:init

(chips c1)

(dip d1)

(pop p1)

(cheese z1)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-cheese) 
(have-chips) 

)

)

)
