


(define (problem logistics-c2-s2-p3-a2)
(:domain logistics-strips)
(:objects object_6 object_7 
          object_3 object_0 
          object_2 object_9 
          object_5 object_12 object_1 object_8 
          object_4 object_10 object_11 
)
(:init
    (airplane object_6)
    (airplane object_7)
    (city object_3)
    (city object_0)
    (truck object_2)
    (truck object_9)
    (location object_5)
    (in-city  object_5 object_3)
    (location object_12)
    (in-city  object_12 object_3)
    (location object_1)
    (in-city  object_1 object_0)
    (location object_8)
    (in-city  object_8 object_0)
    (airport object_5)
    (airport object_1)
    (obj object_4)
    (obj object_10)
    (obj object_11)
    (at object_2 object_12)
    (at object_9 object_1)
    (at object_4 object_8)
    (at object_10 object_5)
    (at object_11 object_5)
    (at object_6 object_5)
    (at object_7 object_1)
)
(:goal
    (and
        (at object_4 object_12)
        (at object_10 object_8)
        (at object_11 object_1)
    )
)
)


