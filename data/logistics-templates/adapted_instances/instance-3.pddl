


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects object_2 
          object_4 object_3 
          object_1 object_8 
          object_0 object_6 
          object_5 object_7 
)
(:init
    (airplane object_2)
    (city object_4)
    (city object_3)
    (truck object_1)
    (truck object_8)
    (location object_0)
    (in-city  object_0 object_4)
    (location object_6)
    (in-city  object_6 object_3)
    (airport object_0)
    (airport object_6)
    (obj object_5)
    (obj object_7)
    (at object_1 object_0)
    (at object_8 object_6)
    (at object_5 object_6)
    (at object_7 object_0)
    (at object_2 object_6)
)
(:goal
    (and
        (at object_5 object_6)
        (at object_7 object_6)
    )
)
)


