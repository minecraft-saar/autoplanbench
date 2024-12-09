(define (problem movie-2-5)

(:domain movie-strips-complex)

(:objects 
object_7 
object_4 
object_6 
object_5 
object_1 
object_2 
object_0 
object_3 
)

(:init

(chips object_7)

(chips object_4)

(dip object_6)

(pop object_5)

(pop object_1)

(cheese object_2)

(crackers object_0)

(crackers object_3)

(counter-at-zero)

)
(:goal

(and (movie-rewound) (counter-at-zero) 
(have-dip) 
(have-pop) 
(have-cheese) 
(have-chips) 
(have-crackers) 

)

)

)
