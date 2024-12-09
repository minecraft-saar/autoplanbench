


(define (problem logistics-c2-s1-p1-a2)
(:domain logistics-strips)
(:objects object_7 object_8 
          object_2 object_1 
          object_3 object_5 
          object_0 object_6 
          object_4 
)
(:init
    (airplane object_7)
    (airplane object_8)
    (city object_2)
    (city object_1)
    (truck object_3)
    (truck object_5)
    (location object_0)
    (in-city  object_0 object_2)
    (location object_6)
    (in-city  object_6 object_1)
    (airport object_0)
    (airport object_6)
    (obj object_4)
    (at object_3 object_0)
    (at object_5 object_6)
    (at object_4 object_6)
    (at object_7 object_6)
    (at object_8 object_6)
)
(:goal
    (and
        (at object_4 object_0)
    )
)
)


