(define (problem movie-4-4)

(:domain movie-strips-complex)

(:objects 
object_6 
object_10 
object_3 
object_2 
object_1 
object_7 
object_4 
object_8 
object_9 
object_0 
object_5 
)

(:init

(chips object_6)

(chips object_10)

(chips object_3)

(dip object_2)

(dip object_1)

(dip object_7)

(dip object_4)

(pop object_8)

(cheese object_9)

(crackers object_0)

(crackers object_5)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-chips) 
(have-dip) 
(have-cheese) 

)

)

)
