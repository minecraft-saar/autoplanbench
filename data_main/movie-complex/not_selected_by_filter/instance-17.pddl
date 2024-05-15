(define (problem movie-4-5)

(:domain movie-strips-complex)

(:objects 
object_0 
object_1 
object_2 
object_3 
object_4 
object_5 
object_6 
object_7 
object_8 
object_9 
object_10 
)

(:init

(chips object_0)

(dip object_1)

(dip object_2)

(dip object_3)

(dip object_4)

(pop object_5)

(pop object_6)

(pop object_7)

(pop object_8)

(cheese object_9)

(crackers object_10)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-pop) 
(have-dip) 
(have-cheese) 
(have-chips) 

)

)

)
