(define (problem movie-2-4)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
p1 
z1 
z2 
k1 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(pop p1)

(cheese z1)

(cheese z2)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-dip) 
(have-chips) 

)

)

)
