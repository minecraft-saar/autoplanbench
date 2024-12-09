(define (problem movie-4-5)

(:domain movie-strips-complex)

(:objects 
object_1 
object_3 
object_7 
object_0 
object_6 
object_5 
object_4 
object_2 
object_8 
)

(:init

(chips object_1)

(dip object_3)

(pop object_7)

(pop object_0)

(cheese object_6)

(crackers object_5)

(crackers object_4)

(crackers object_2)

(crackers object_8)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-cheese) 
(have-crackers) 
(have-chips) 
(have-dip) 
(have-pop) 

)

)

)
