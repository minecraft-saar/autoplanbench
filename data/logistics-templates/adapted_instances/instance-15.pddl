


(define (problem logistics-c2-s2-p3-a2)
(:domain logistics-strips)
(:objects object_12 object_5 
          object_0 object_1 
          object_9 object_11 
          object_6 object_4 object_8 object_10 
          object_2 object_3 object_7 
)
(:init
    (airplane object_12)
    (airplane object_5)
    (city object_0)
    (city object_1)
    (truck object_9)
    (truck object_11)
    (location object_6)
    (in-city  object_6 object_0)
    (location object_4)
    (in-city  object_4 object_0)
    (location object_8)
    (in-city  object_8 object_1)
    (location object_10)
    (in-city  object_10 object_1)
    (airport object_6)
    (airport object_8)
    (obj object_2)
    (obj object_3)
    (obj object_7)
    (at object_9 object_6)
    (at object_11 object_10)
    (at object_2 object_8)
    (at object_3 object_10)
    (at object_7 object_6)
    (at object_12 object_8)
    (at object_5 object_6)
)
(:goal
    (and
        (at object_2 object_4)
        (at object_3 object_4)
        (at object_7 object_4)
    )
)
)


