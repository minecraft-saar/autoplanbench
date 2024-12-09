(define (problem movie-4-4)

(:domain movie-strips-complex)

(:objects 
object_7 
object_12 
object_10 
object_0 
object_8 
object_1 
object_3 
object_5 
object_11 
object_2 
object_6 
object_13 
object_4 
object_9 
)

(:init

(chips object_7)

(chips object_12)

(chips object_10)

(chips object_0)

(dip object_8)

(dip object_1)

(pop object_3)

(pop object_5)

(pop object_11)

(cheese object_2)

(crackers object_6)

(crackers object_13)

(crackers object_4)

(crackers object_9)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-pop) 
(have-cheese) 
(have-chips) 

)

)

)
