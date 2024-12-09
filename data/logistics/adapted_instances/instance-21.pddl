


(define (problem logistics-c2-s3-p1-a1)
(:domain logistics-strips)
(:objects object_11 
          object_1 object_8 
          object_10 object_0 
          object_2 object_6 object_9 object_5 object_7 object_4 
          object_3 
)
(:init
    (airplane object_11)
    (city object_1)
    (city object_8)
    (truck object_10)
    (truck object_0)
    (location object_2)
    (in-city  object_2 object_1)
    (location object_6)
    (in-city  object_6 object_1)
    (location object_9)
    (in-city  object_9 object_1)
    (location object_5)
    (in-city  object_5 object_8)
    (location object_7)
    (in-city  object_7 object_8)
    (location object_4)
    (in-city  object_4 object_8)
    (airport object_2)
    (airport object_5)
    (obj object_3)
    (at object_10 object_2)
    (at object_0 object_4)
    (at object_3 object_5)
    (at object_11 object_2)
)
(:goal
    (and
        (at object_3 object_7)
    )
)
)


