(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
object_9 
object_1 
object_8 
object_4 
object_2 
object_5 
object_6 
object_7 
object_3 
object_0 
)

(:init

(chips object_9)

(chips object_1)

(dip object_8)

(pop object_4)

(pop object_2)

(pop object_5)

(cheese object_6)

(cheese object_7)

(crackers object_3)

(crackers object_0)

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
