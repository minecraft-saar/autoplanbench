(define (problem movie-6-4)

(:domain movie-strips-complex)

(:objects 
object_12 
object_6 
object_15 
object_11 
object_8 
object_5 
object_4 
object_9 
object_10 
object_3 
object_14 
object_13 
object_1 
object_0 
object_7 
object_2 
)

(:init

(chips object_12)

(chips object_6)

(chips object_15)

(chips object_11)

(dip object_8)

(dip object_5)

(pop object_4)

(pop object_9)

(pop object_10)

(pop object_3)

(cheese object_14)

(cheese object_13)

(crackers object_1)

(crackers object_0)

(crackers object_7)

(crackers object_2)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-chips) 
(have-pop) 

)

)

)
