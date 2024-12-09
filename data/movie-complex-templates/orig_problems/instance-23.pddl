(define (problem movie-5-3)

(:domain movie-strips-complex)

(:objects 
c1 
c2 
c3 
d1 
d2 
d3 
d4 
p1 
z1 
z2 
k1 
)

(:init

(chips c1)

(chips c2)

(chips c3)

(dip d1)

(dip d2)

(dip d3)

(dip d4)

(pop p1)

(cheese z1)

(cheese z2)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-chips) 
(have-dip) 

)

)

)
