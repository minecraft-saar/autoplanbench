(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
d1 
p1 
p2 
p3 
z1 
z2 
k1 
k2 
)

(:init

(chips c1)

(chips c2)

(dip d1)

(pop p1)

(pop p2)

(pop p3)

(cheese z1)

(cheese z2)

(crackers k1)

(crackers k2)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-pop) 
(have-dip) 

)

)

)
