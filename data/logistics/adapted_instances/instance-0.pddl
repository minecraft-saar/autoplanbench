


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects object_7 
          object_2 object_3 
          object_0 object_1 
          object_4 object_6 
          object_8 object_5 
)
(:init
    (airplane object_7)
    (city object_2)
    (city object_3)
    (truck object_0)
    (truck object_1)
    (location object_4)
    (in-city  object_4 object_2)
    (location object_6)
    (in-city  object_6 object_3)
    (airport object_4)
    (airport object_6)
    (obj object_8)
    (obj object_5)
    (at object_0 object_4)
    (at object_1 object_6)
    (at object_8 object_6)
    (at object_5 object_6)
    (at object_7 object_6)
)
(:goal
    (and
        (at object_8 object_4)
        (at object_5 object_4)
    )
)
)


