(define (problem movie-3-2)

(:domain movie-strips-complex)

(:objects 
object_0 
object_5 
object_10 
object_11 
object_2 
object_4 
object_3 
object_7 
object_9 
object_1 
object_8 
object_6 
)

(:init

(chips object_0)

(chips object_5)

(chips object_10)

(dip object_11)

(dip object_2)

(pop object_4)

(pop object_3)

(pop object_7)

(cheese object_9)

(cheese object_1)

(cheese object_8)

(crackers object_6)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-pop) 

)

)

)
