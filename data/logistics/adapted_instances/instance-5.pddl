


(define (problem logistics-c2-s1-p2-a2)
(:domain logistics-strips)
(:objects object_3 object_2 
          object_1 object_6 
          object_0 object_4 
          object_8 object_5 
          object_9 object_7 
)
(:init
    (airplane object_3)
    (airplane object_2)
    (city object_1)
    (city object_6)
    (truck object_0)
    (truck object_4)
    (location object_8)
    (in-city  object_8 object_1)
    (location object_5)
    (in-city  object_5 object_6)
    (airport object_8)
    (airport object_5)
    (obj object_9)
    (obj object_7)
    (at object_0 object_8)
    (at object_4 object_5)
    (at object_9 object_5)
    (at object_7 object_5)
    (at object_3 object_8)
    (at object_2 object_8)
)
(:goal
    (and
        (at object_9 object_5)
        (at object_7 object_8)
    )
)
)


