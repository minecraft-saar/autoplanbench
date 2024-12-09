(define (problem movie-3-3)

(:domain movie-strips-complex)

(:objects 
object_5 
object_3 
object_0 
object_9 
object_1 
object_10 
object_6 
object_2 
object_11 
object_4 
object_8 
object_7 
)

(:init

(chips object_5)

(chips object_3)

(dip object_0)

(dip object_9)

(pop object_1)

(pop object_10)

(cheese object_6)

(cheese object_2)

(cheese object_11)

(crackers object_4)

(crackers object_8)

(crackers object_7)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-pop) 
(have-crackers) 
(have-cheese) 

)

)

)
