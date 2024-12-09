(define (problem movie-1-3)

(:domain movie-strips-complex)

(:objects 
object_1 
object_4 
object_0 
object_2 
object_3 
)

(:init

(chips object_1)

(dip object_4)

(pop object_0)

(cheese object_2)

(crackers object_3)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-pop) 
(have-crackers) 
(have-dip) 

)

)

)
