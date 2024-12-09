(define (problem movie-3-2)

(:domain movie-strips-complex)

(:objects 
object_0 
object_7 
object_1 
object_5 
object_4 
object_3 
object_8 
object_2 
object_6 
)

(:init

(chips object_0)

(chips object_7)

(dip object_1)

(pop object_5)

(pop object_4)

(pop object_3)

(cheese object_8)

(crackers object_2)

(crackers object_6)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-dip) 

)

)

)
