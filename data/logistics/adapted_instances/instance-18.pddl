


(define (problem logistics-c2-s3-p2-a2)
(:domain logistics-strips)
(:objects object_8 object_3 
          object_0 object_1 
          object_7 object_4 
          object_11 object_10 object_13 object_9 object_6 object_5 
          object_12 object_2 
)
(:init
    (airplane object_8)
    (airplane object_3)
    (city object_0)
    (city object_1)
    (truck object_7)
    (truck object_4)
    (location object_11)
    (in-city  object_11 object_0)
    (location object_10)
    (in-city  object_10 object_0)
    (location object_13)
    (in-city  object_13 object_0)
    (location object_9)
    (in-city  object_9 object_1)
    (location object_6)
    (in-city  object_6 object_1)
    (location object_5)
    (in-city  object_5 object_1)
    (airport object_11)
    (airport object_9)
    (obj object_12)
    (obj object_2)
    (at object_7 object_13)
    (at object_4 object_5)
    (at object_12 object_5)
    (at object_2 object_10)
    (at object_8 object_9)
    (at object_3 object_9)
)
(:goal
    (and
        (at object_12 object_6)
        (at object_2 object_9)
    )
)
)


