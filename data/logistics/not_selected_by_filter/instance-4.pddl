


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects object_5 
          object_8 object_7 
          object_6 object_3 
          object_0 object_1 
          object_4 object_2 
)
(:init
    (airplane object_5)
    (city object_8)
    (city object_7)
    (truck object_6)
    (truck object_3)
    (location object_0)
    (in-city  object_0 object_8)
    (location object_1)
    (in-city  object_1 object_7)
    (airport object_0)
    (airport object_1)
    (obj object_4)
    (obj object_2)
    (at object_6 object_0)
    (at object_3 object_1)
    (at object_4 object_1)
    (at object_2 object_1)
    (at object_5 object_1)
)
(:goal
    (and
        (at object_4 object_0)
        (at object_2 object_0)
    )
)
)


