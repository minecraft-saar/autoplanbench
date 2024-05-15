(define (problem movie-2-4)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
d2 
p1 
p2 
z1 
z2 
k1 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(dip d2)

(pop p1)

(pop p2)

(cheese z1)

(cheese z2)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-dip) 
(have-chips) 
(have-cheese) 

)

)

)
