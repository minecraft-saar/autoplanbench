


(define (problem logistics-c2-s2-p4-a2)
(:domain logistics-strips)
(:objects object_10 object_3 
          object_11 object_4 
          object_5 object_1 
          object_0 object_8 object_13 object_2 
          object_12 object_9 object_6 object_7 
)
(:init
    (airplane object_10)
    (airplane object_3)
    (city object_11)
    (city object_4)
    (truck object_5)
    (truck object_1)
    (location object_0)
    (in-city  object_0 object_11)
    (location object_8)
    (in-city  object_8 object_11)
    (location object_13)
    (in-city  object_13 object_4)
    (location object_2)
    (in-city  object_2 object_4)
    (airport object_0)
    (airport object_13)
    (obj object_12)
    (obj object_9)
    (obj object_6)
    (obj object_7)
    (at object_5 object_8)
    (at object_1 object_2)
    (at object_12 object_8)
    (at object_9 object_2)
    (at object_6 object_13)
    (at object_7 object_2)
    (at object_10 object_13)
    (at object_3 object_13)
)
(:goal
    (and
        (at object_12 object_0)
        (at object_9 object_13)
        (at object_6 object_8)
        (at object_7 object_2)
    )
)
)


