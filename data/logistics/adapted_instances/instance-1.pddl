


(define (problem logistics-c2-s1-p1-a2)
(:domain logistics-strips)
(:objects object_8 object_1 
          object_2 object_6 
          object_0 object_3 
          object_5 object_4 
          object_7 
)
(:init
    (airplane object_8)
    (airplane object_1)
    (city object_2)
    (city object_6)
    (truck object_0)
    (truck object_3)
    (location object_5)
    (in-city  object_5 object_2)
    (location object_4)
    (in-city  object_4 object_6)
    (airport object_5)
    (airport object_4)
    (obj object_7)
    (at object_0 object_5)
    (at object_3 object_4)
    (at object_7 object_4)
    (at object_8 object_5)
    (at object_1 object_5)
)
(:goal
    (and
        (at object_7 object_5)
    )
)
)


