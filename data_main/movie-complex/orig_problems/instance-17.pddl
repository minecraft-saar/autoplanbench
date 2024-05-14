(define (problem movie-4-5)

(:domain movie-strips-complex)

(:objects 
c1 
d1 
d2 
d3 
d4 
p1 
p2 
p3 
p4 
z1 
k1 
)

(:init

(chips c1)

(dip d1)

(dip d2)

(dip d3)

(dip d4)

(pop p1)

(pop p2)

(pop p3)

(pop p4)

(cheese z1)

(crackers k1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-pop) 
(have-dip) 
(have-cheese) 
(have-chips) 

)

)

)
