


(define (problem logistics-c2-s3-p2-a1)
(:domain logistics-strips)
(:objects object_10 
          object_8 object_3 
          object_1 object_6 
          object_9 object_12 object_2 object_7 object_0 object_5 
          object_11 object_4 
)
(:init
    (airplane object_10)
    (city object_8)
    (city object_3)
    (truck object_1)
    (truck object_6)
    (location object_9)
    (in-city  object_9 object_8)
    (location object_12)
    (in-city  object_12 object_8)
    (location object_2)
    (in-city  object_2 object_8)
    (location object_7)
    (in-city  object_7 object_3)
    (location object_0)
    (in-city  object_0 object_3)
    (location object_5)
    (in-city  object_5 object_3)
    (airport object_9)
    (airport object_7)
    (obj object_11)
    (obj object_4)
    (at object_1 object_12)
    (at object_6 object_7)
    (at object_11 object_0)
    (at object_4 object_5)
    (at object_10 object_9)
)
(:goal
    (and
        (at object_11 object_2)
        (at object_4 object_9)
    )
)
)

