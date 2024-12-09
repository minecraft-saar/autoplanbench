


(define (problem logistics-c2-s2-p1-a2)
(:domain logistics-strips)
(:objects object_8 object_2 
          object_1 object_4 
          object_9 object_5 
          object_7 object_3 object_10 object_6 
          object_0 
)
(:init
    (airplane object_8)
    (airplane object_2)
    (city object_1)
    (city object_4)
    (truck object_9)
    (truck object_5)
    (location object_7)
    (in-city  object_7 object_1)
    (location object_3)
    (in-city  object_3 object_1)
    (location object_10)
    (in-city  object_10 object_4)
    (location object_6)
    (in-city  object_6 object_4)
    (airport object_7)
    (airport object_10)
    (obj object_0)
    (at object_9 object_7)
    (at object_5 object_6)
    (at object_0 object_6)
    (at object_8 object_10)
    (at object_2 object_7)
)
(:goal
    (and
        (at object_0 object_7)
    )
)
)


