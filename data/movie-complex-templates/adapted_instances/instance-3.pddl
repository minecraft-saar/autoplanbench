(define (problem movie-1-3)

(:domain movie-strips-complex)

(:objects 
object_2 
object_0 
object_1 
object_4 
object_3 
)

(:init

(chips object_2)

(dip object_0)

(pop object_1)

(cheese object_4)

(crackers object_3)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-crackers) 
(have-dip) 

)

)

)
