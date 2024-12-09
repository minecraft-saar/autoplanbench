(define (problem movie-1-5)

(:domain movie-strips-complex)

(:objects 
object_0 
object_4 
object_1 
object_3 
object_2 
)

(:init

(chips object_0)

(dip object_4)

(pop object_1)

(cheese object_3)

(crackers object_2)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-pop) 
(have-dip) 
(have-cheese) 
(have-crackers) 

)

)

)
