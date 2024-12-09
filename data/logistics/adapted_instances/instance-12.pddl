


(define (problem logistics-c2-s2-p3-a1)
(:domain logistics-strips)
(:objects object_4 
          object_6 object_2 
          object_0 object_8 
          object_7 object_5 object_3 object_1 
          object_11 object_9 object_10 
)
(:init
    (airplane object_4)
    (city object_6)
    (city object_2)
    (truck object_0)
    (truck object_8)
    (location object_7)
    (in-city  object_7 object_6)
    (location object_5)
    (in-city  object_5 object_6)
    (location object_3)
    (in-city  object_3 object_2)
    (location object_1)
    (in-city  object_1 object_2)
    (airport object_7)
    (airport object_3)
    (obj object_11)
    (obj object_9)
    (obj object_10)
    (at object_0 object_7)
    (at object_8 object_3)
    (at object_11 object_7)
    (at object_9 object_1)
    (at object_10 object_5)
    (at object_4 object_7)
)
(:goal
    (and
        (at object_11 object_3)
        (at object_9 object_3)
        (at object_10 object_3)
    )
)
)


