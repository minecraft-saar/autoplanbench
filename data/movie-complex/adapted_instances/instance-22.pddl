(define (problem movie-5-3)

(:domain movie-strips-complex)

(:objects 
object_12 
object_14 
object_1 
object_4 
object_5 
object_2 
object_11 
object_7 
object_13 
object_3 
object_10 
object_9 
object_6 
object_0 
object_8 
)

(:init

(chips object_12)

(dip object_14)

(pop object_1)

(pop object_4)

(pop object_5)

(pop object_2)

(pop object_11)

(cheese object_7)

(cheese object_13)

(cheese object_3)

(crackers object_10)

(crackers object_9)

(crackers object_6)

(crackers object_0)

(crackers object_8)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-pop) 

)

)

)
