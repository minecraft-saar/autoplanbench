


(define (problem logistics-c2-s2-p1-a1)
(:domain logistics-strips)
(:objects object_3 
          object_7 object_8 
          object_0 object_6 
          object_9 object_5 object_4 object_1 
          object_2 
)
(:init
    (airplane object_3)
    (city object_7)
    (city object_8)
    (truck object_0)
    (truck object_6)
    (location object_9)
    (in-city  object_9 object_7)
    (location object_5)
    (in-city  object_5 object_7)
    (location object_4)
    (in-city  object_4 object_8)
    (location object_1)
    (in-city  object_1 object_8)
    (airport object_9)
    (airport object_4)
    (obj object_2)
    (at object_0 object_9)
    (at object_6 object_1)
    (at object_2 object_5)
    (at object_3 object_9)
)
(:goal
    (and
        (at object_2 object_4)
    )
)
)


