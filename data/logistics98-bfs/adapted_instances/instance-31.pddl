(define (problem strips-log-y-1)
   (:domain logistics-strips)
   (:objects object_16 object_19 object_23 object_11 object_13 object_8 object_24
             object_21 object_17 object_6 object_0 object_12 object_22 object_1 object_14
             object_20 object_7 object_4 object_15 object_18 object_10 object_9
             object_3 object_5 object_2)
   (:init (obj object_16)
          (obj object_19)
          (obj object_23)
          (city object_11)
          (city object_13)
          (city object_8)
          (city object_24)
          (city object_21)
          (truck object_17)
          (truck object_6)
          (truck object_0)
          (truck object_12)
          (truck object_22)
          (airplane object_1)
          (airplane object_14)
          (location object_20)
          (location object_7)
          (location object_4)
          (location object_15)
          (location object_18)
          (airport object_10)
          (location object_10)
          (airport object_9)
          (location object_9)
          (airport object_3)
          (location object_3)
          (airport object_5)
          (location object_5)
          (airport object_2)
          (location object_2)
          (in-city object_10 object_11)
          (in-city object_20 object_11)
          (in-city object_9 object_13)
          (in-city object_7 object_13)
          (in-city object_3 object_8)
          (in-city object_4 object_8)
          (in-city object_5 object_24)
          (in-city object_15 object_24)
          (in-city object_2 object_21)
          (in-city object_18 object_21)
          (at object_1 object_2)
          (at object_14 object_5)
          (at object_17 object_20)
          (at object_6 object_7)
          (at object_0 object_4)
          (at object_12 object_15)
          (at object_22 object_18)
          (at object_16 object_18)
          (at object_19 object_2)
          (at object_23 object_7))
   (:goal (and (at object_16 object_2)
               (at object_19 object_18)
               (at object_23 object_3))))