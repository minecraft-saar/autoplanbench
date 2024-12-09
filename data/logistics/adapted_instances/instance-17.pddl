


(define (problem logistics-c2-s3-p2-a1)
(:domain logistics-strips)
(:objects object_2 
          object_12 object_8 
          object_3 object_10 
          object_1 object_6 object_7 object_11 object_0 object_9 
          object_5 object_4 
)
(:init
    (airplane object_2)
    (city object_12)
    (city object_8)
    (truck object_3)
    (truck object_10)
    (location object_1)
    (in-city  object_1 object_12)
    (location object_6)
    (in-city  object_6 object_12)
    (location object_7)
    (in-city  object_7 object_12)
    (location object_11)
    (in-city  object_11 object_8)
    (location object_0)
    (in-city  object_0 object_8)
    (location object_9)
    (in-city  object_9 object_8)
    (airport object_1)
    (airport object_11)
    (obj object_5)
    (obj object_4)
    (at object_3 object_7)
    (at object_10 object_9)
    (at object_5 object_6)
    (at object_4 object_9)
    (at object_2 object_11)
)
(:goal
    (and
        (at object_5 object_7)
        (at object_4 object_11)
    )
)
)

