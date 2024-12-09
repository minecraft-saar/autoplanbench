(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
object_3 
object_6 
object_1 
object_2 
object_8 
object_7 
object_0 
object_5 
object_4 
)

(:init

(chips object_3)

(chips object_6)

(dip object_1)

(pop object_2)

(cheese object_8)

(cheese object_7)

(crackers object_0)

(crackers object_5)

(crackers object_4)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-pop) 
(have-crackers) 

)

)

)
