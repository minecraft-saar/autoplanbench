(define (problem movie-2-4)

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
)

(:init

(chips object_0)

(chips object_1)

(dip object_2)

(dip object_3)

(pop object_4)

(pop object_5)

(cheese object_6)

(cheese object_7)

(crackers object_8)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-dip) 
(have-chips) 
(have-cheese) 

)

)

)
