


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects object_3 
          object_2 object_1 
          object_6 object_5 
          object_4 object_0 
          object_7 object_8 
)
(:init
    (airplane object_3)
    (city object_2)
    (city object_1)
    (truck object_6)
    (truck object_5)
    (location object_4)
    (in-city  object_4 object_2)
    (location object_0)
    (in-city  object_0 object_1)
    (airport object_4)
    (airport object_0)
    (obj object_7)
    (obj object_8)
    (at object_6 object_4)
    (at object_5 object_0)
    (at object_7 object_0)
    (at object_8 object_0)
    (at object_3 object_0)
)
(:goal
    (and
        (at object_7 object_4)
        (at object_8 object_4)
    )
)
)


