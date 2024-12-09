


(define (problem logistics-c2-s2-p2-a1)
(:domain logistics-strips)
(:objects object_3 
          object_10 object_9 
          object_4 object_0 
          object_2 object_7 object_8 object_6 
          object_1 object_5 
)
(:init
    (airplane object_3)
    (city object_10)
    (city object_9)
    (truck object_4)
    (truck object_0)
    (location object_2)
    (in-city  object_2 object_10)
    (location object_7)
    (in-city  object_7 object_10)
    (location object_8)
    (in-city  object_8 object_9)
    (location object_6)
    (in-city  object_6 object_9)
    (airport object_2)
    (airport object_8)
    (obj object_1)
    (obj object_5)
    (at object_4 object_2)
    (at object_0 object_6)
    (at object_1 object_2)
    (at object_5 object_2)
    (at object_3 object_2)
)
(:goal
    (and
        (at object_1 object_7)
        (at object_5 object_7)
    )
)
)


