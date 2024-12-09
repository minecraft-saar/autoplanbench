(define (problem movie-2-4)

(:domain movie-strips-complex)

(:objects 
object_4 
object_2 
object_1 
object_3 
object_6 
object_5 
object_0 
)

(:init

(chips object_4)

(chips object_2)

(dip object_1)

(pop object_3)

(cheese object_6)

(crackers object_5)

(crackers object_0)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-chips) 
(have-crackers) 
(have-dip) 

)

)

)
