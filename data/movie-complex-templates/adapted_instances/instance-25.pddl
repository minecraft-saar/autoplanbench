(define (problem movie-6-4)

(:domain movie-strips-complex)

(:objects 
object_0 
object_12 
object_11 
object_5 
object_7 
object_9 
object_8 
object_4 
object_6 
object_10 
object_2 
object_13 
object_3 
object_1 
)

(:init

(chips object_0)

(dip object_12)

(dip object_11)

(dip object_5)

(pop object_7)

(pop object_9)

(cheese object_8)

(cheese object_4)

(cheese object_6)

(cheese object_10)

(crackers object_2)

(crackers object_13)

(crackers object_3)

(crackers object_1)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-chips) 
(have-crackers) 
(have-cheese) 
(have-pop) 

)

)

)
