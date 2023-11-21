


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects object_0 
          object_1 object_2 
          object_3 object_4 
          object_5 object_6 
          object_7 object_8 
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
    (in-city  object_6 object_2)
    (AIRPORT object_5)
    (AIRPORT object_6)
    (OBJ object_7)
    (OBJ object_8)
    (at object_3 object_5)
    (at object_4 object_6)
    (at object_7 object_6)
    (at object_8 object_5)
    (at object_0 object_6)
)
(:goal
    (and
        (at object_7 object_6)
        (at object_8 object_6)
    )
)
)


