(define (problem logistics-9-1)
(:domain logistics)
(:objects object_9 object_2 object_16 object_5 object_4 object_18 object_14 object_0 object_6 object_11 object_10 object_13 object_1 object_7 object_8 object_21 object_19 object_3 object_17 object_20 object_15 object_12 )
(:init (package object_12) (package object_15) (package object_20) (package object_17)
 (package object_3) (package object_19) (package object_21) (package object_8) (package object_7)
 (truck object_1) (truck object_13) (truck object_10) (city object_11) (city object_6) (city object_0)
 (location object_14) (location object_18) (location object_4) (location object_5) (location object_16)
 (location object_2) (airport object_18) (airport object_5) (airport object_2) (airplane object_9)
 (at object_9 object_18) (at object_1 object_14) (at object_12 object_14) (at object_15 object_14) (at object_20 object_14)
 (at object_13 object_4) (at object_17 object_4) (at object_3 object_4) (at object_19 object_4) (at object_10 object_16)
 (at object_21 object_16) (at object_8 object_16) (at object_7 object_16) (in-city object_14 object_11)
 (in-city object_18 object_11) (in-city object_4 object_6) (in-city object_5 object_6) (in-city object_16 object_0)
 (in-city object_2 object_0))
(:goal (and (at object_12 object_5) (at object_21 object_16) (at object_20 object_16) (at object_19 object_2)
            (at object_7 object_2) (at object_3 object_4) (at object_8 object_2) (at object_17 object_4)
            (at object_15 object_16)))
)