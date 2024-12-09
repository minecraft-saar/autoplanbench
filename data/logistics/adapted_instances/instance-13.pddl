


(define (problem logistics-c2-s2-p3-a1)
(:domain logistics-strips)
(:objects object_6 
          object_7 object_9 
          object_8 object_3 
          object_11 object_2 object_4 object_5 
          object_1 object_0 object_10 
)
(:init
    (airplane object_6)
    (city object_7)
    (city object_9)
    (truck object_8)
    (truck object_3)
    (location object_11)
    (in-city  object_11 object_7)
    (location object_2)
    (in-city  object_2 object_7)
    (location object_4)
    (in-city  object_4 object_9)
    (location object_5)
    (in-city  object_5 object_9)
    (airport object_11)
    (airport object_4)
    (obj object_1)
    (obj object_0)
    (obj object_10)
    (at object_8 object_2)
    (at object_3 object_4)
    (at object_1 object_5)
    (at object_0 object_11)
    (at object_10 object_11)
    (at object_6 object_11)
)
(:goal
    (and
        (at object_1 object_2)
        (at object_0 object_5)
        (at object_10 object_4)
    )
)
)


