


(define (problem logistics-c2-s2-p2-a2)
(:domain logistics-strips)
(:objects object_6 object_9 
          object_4 object_2 
          object_5 object_0 
          object_1 object_3 object_7 object_11 
          object_8 object_10 
)
(:init
    (airplane object_6)
    (airplane object_9)
    (city object_4)
    (city object_2)
    (truck object_5)
    (truck object_0)
    (location object_1)
    (in-city  object_1 object_4)
    (location object_3)
    (in-city  object_3 object_4)
    (location object_7)
    (in-city  object_7 object_2)
    (location object_11)
    (in-city  object_11 object_2)
    (airport object_1)
    (airport object_7)
    (obj object_8)
    (obj object_10)
    (at object_5 object_1)
    (at object_0 object_7)
    (at object_8 object_1)
    (at object_10 object_11)
    (at object_6 object_7)
    (at object_9 object_1)
)
(:goal
    (and
        (at object_8 object_3)
        (at object_10 object_7)
    )
)
)


