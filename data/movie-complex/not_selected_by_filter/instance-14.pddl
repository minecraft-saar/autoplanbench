(define (problem movie-3-2)

(:domain movie-strips-complex)

(:objects 
object_1 
object_5 
object_6 
object_3 
object_8 
object_4 
object_7 
object_2 
object_0 
)

(:init

(chips object_1)

(chips object_5)

(dip object_6)

(pop object_3)

(pop object_8)

(pop object_4)

(cheese object_7)

(crackers object_2)

(crackers object_0)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-crackers) 
(have-dip) 

)

)

)
