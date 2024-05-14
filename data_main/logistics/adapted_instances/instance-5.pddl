


(define (problem logistics-c2-s1-p2-a2)
(:domain logistics-strips)
(:objects object_0 object_1 
          object_2 object_3 
          object_4 object_5 
          object_6 object_7 
          object_8 object_9 
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
    (in-city  object_7 object_3)
    (AIRPORT object_6)
    (AIRPORT object_7)
    (OBJ object_8)
    (OBJ object_9)
    (at object_4 object_6)
    (at object_5 object_7)
    (at object_8 object_7)
    (at object_9 object_7)
    (at object_0 object_6)
    (at object_1 object_6)
)
(:goal
    (and
        (at object_8 object_7)
        (at object_9 object_6)
    )
)
)


