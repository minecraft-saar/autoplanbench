


(define (problem logistics-c2-s3-p2-a2)
(:domain logistics-strips)
(:objects object_0 object_1 
          object_2 object_3 
          object_4 object_5 
          object_6 object_7 object_8 object_9 object_10 object_11 
          object_12 object_13 
)
(:init
    (AIRPLANE object_0)
    (AIRPLANE object_1)
    (CITY object_2)
    (CITY object_3)
    (TRUCK object_4)
    (TRUCK object_5)
    (LOCATION object_6)
    (in-city  object_6 object_2)
    (LOCATION object_7)
    (in-city  object_7 object_2)
    (LOCATION object_8)
    (in-city  object_8 object_2)
    (LOCATION object_9)
    (in-city  object_9 object_3)
    (LOCATION object_10)
    (in-city  object_10 object_3)
    (LOCATION object_11)
    (in-city  object_11 object_3)
    (AIRPORT object_6)
    (AIRPORT object_9)
    (OBJ object_12)
    (OBJ object_13)
    (at object_4 object_8)
    (at object_5 object_11)
    (at object_12 object_11)
    (at object_13 object_7)
    (at object_0 object_9)
    (at object_1 object_9)
)
(:goal
    (and
        (at object_12 object_10)
        (at object_13 object_9)
    )
)
)


