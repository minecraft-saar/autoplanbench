


(define (problem logistics-c2-s2-p2-a1)
(:domain logistics-strips)
(:objects object_1 
          object_0 object_10 
          object_7 object_4 
          object_2 object_8 object_6 object_3 
          object_5 object_9 
)
(:init
    (airplane object_1)
    (city object_0)
    (city object_10)
    (truck object_7)
    (truck object_4)
    (location object_2)
    (in-city  object_2 object_0)
    (location object_8)
    (in-city  object_8 object_0)
    (location object_6)
    (in-city  object_6 object_10)
    (location object_3)
    (in-city  object_3 object_10)
    (airport object_2)
    (airport object_6)
    (obj object_5)
    (obj object_9)
    (at object_7 object_2)
    (at object_4 object_3)
    (at object_5 object_3)
    (at object_9 object_2)
    (at object_1 object_6)
)
(:goal
    (and
        (at object_5 object_6)
        (at object_9 object_2)
    )
)
)


