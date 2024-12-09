


(define (problem logistics-c2-s2-p1-a1)
(:domain logistics-strips)
(:objects object_4 
          object_2 object_8 
          object_3 object_6 
          object_5 object_9 object_0 object_1 
          object_7 
)
(:init
    (airplane object_4)
    (city object_2)
    (city object_8)
    (truck object_3)
    (truck object_6)
    (location object_5)
    (in-city  object_5 object_2)
    (location object_9)
    (in-city  object_9 object_2)
    (location object_0)
    (in-city  object_0 object_8)
    (location object_1)
    (in-city  object_1 object_8)
    (airport object_5)
    (airport object_0)
    (obj object_7)
    (at object_3 object_5)
    (at object_6 object_0)
    (at object_7 object_0)
    (at object_4 object_0)
)
(:goal
    (and
        (at object_7 object_1)
    )
)
)


