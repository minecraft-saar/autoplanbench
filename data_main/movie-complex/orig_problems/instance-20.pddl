(define (problem movie-4-4)

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
k1 
k2 
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

(crackers k1)

(crackers k2)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-chips) 
(have-dip) 
(have-cheese) 

)

)

)
