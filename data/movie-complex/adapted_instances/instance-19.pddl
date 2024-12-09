(define (problem movie-4-4)

(:domain movie-strips-complex)

(:objects 
object_5 
object_4 
object_3 
object_0 
object_7 
object_1 
object_2 
object_6 
)

(:init

(chips object_5)

(dip object_4)

(pop object_3)

(cheese object_0)

(crackers object_7)

(crackers object_1)

(crackers object_2)

(crackers object_6)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-dip) 
(have-pop) 
(have-crackers) 

)

)

)
