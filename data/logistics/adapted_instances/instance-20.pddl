


(define (problem logistics-c2-s3-p1-a1)
(:domain logistics-strips)
(:objects object_3 
          object_6 object_2 
          object_8 object_11 
          object_5 object_10 object_9 object_4 object_1 object_0 
          object_7 
)
(:init
    (airplane object_3)
    (city object_6)
    (city object_2)
    (truck object_8)
    (truck object_11)
    (location object_5)
    (in-city  object_5 object_6)
    (location object_10)
    (in-city  object_10 object_6)
    (location object_9)
    (in-city  object_9 object_6)
    (location object_4)
    (in-city  object_4 object_2)
    (location object_1)
    (in-city  object_1 object_2)
    (location object_0)
    (in-city  object_0 object_2)
    (airport object_5)
    (airport object_4)
    (obj object_7)
    (at object_8 object_9)
    (at object_11 object_4)
    (at object_7 object_10)
    (at object_3 object_4)
)
(:goal
    (and
        (at object_7 object_0)
    )
)
)


