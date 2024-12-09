(define (problem movie-5-3)

(:domain movie-strips-complex)

(:objects 
object_0 
object_1 
object_3 
object_7 
object_9 
object_4 
object_5 
object_2 
object_6 
object_10 
object_8 
)

(:init

(chips object_0)

(chips object_1)

(chips object_3)

(dip object_7)

(dip object_9)

(dip object_4)

(dip object_5)

(pop object_2)

(cheese object_6)

(cheese object_10)

(crackers object_8)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-chips) 
(have-dip) 

)

)

)
