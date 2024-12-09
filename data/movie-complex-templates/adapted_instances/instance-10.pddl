(define (problem movie-3-5)

(:domain movie-strips-complex)

(:objects 
object_4 
object_2 
object_3 
object_7 
object_5 
object_1 
object_8 
object_6 
object_0 
)

(:init

(chips object_4)

(dip object_2)

(pop object_3)

(pop object_7)

(pop object_5)

(cheese object_1)

(cheese object_8)

(crackers object_6)

(crackers object_0)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-chips) 
(have-dip) 
(have-pop) 
(have-cheese) 

)

)

)
