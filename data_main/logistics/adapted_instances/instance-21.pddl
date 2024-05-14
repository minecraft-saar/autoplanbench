


(define (problem logistics-c2-s3-p1-a1)
(:domain logistics-strips)
(:objects object_0 
          object_1 object_2 
          object_3 object_4 
          object_5 object_6 object_7 object_8 object_9 object_10 
          object_11 
)
(:init
    (AIRPLANE object_0)
    (CITY object_1)
    (CITY object_2)
    (TRUCK object_3)
    (TRUCK object_4)
    (LOCATION object_5)
    (in-city  object_5 object_1)
    (LOCATION object_6)
    (in-city  object_6 object_1)
    (LOCATION object_7)
    (in-city  object_7 object_1)
    (LOCATION object_8)
    (in-city  object_8 object_2)
    (LOCATION object_9)
    (in-city  object_9 object_2)
    (LOCATION object_10)
    (in-city  object_10 object_2)
    (AIRPORT object_5)
    (AIRPORT object_8)
    (OBJ object_11)
    (at object_3 object_5)
    (at object_4 object_10)
    (at object_11 object_8)
    (at object_0 object_5)
)
(:goal
    (and
        (at object_11 object_9)
    )
)
)


