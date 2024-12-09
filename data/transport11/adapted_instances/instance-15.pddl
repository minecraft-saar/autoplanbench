; transport three-cities-sequential-5nodes-1000size-4degree-100mindistance-2trucks-9packages-2012seed

(define (problem transport-three-cities-sequential-5nodes-1000size-4degree-100mindistance-2trucks-9packages-2012seed)
 (:domain transport)
 (:objects
  location_10 - location
  location_14 - location
  location_4 - location
  location_8 - location
  location_0 - location
  location_12 - location
  location_11 - location
  location_1 - location
  location_9 - location
  location_2 - location
  location_3 - location
  location_5 - location
  location_7 - location
  location_6 - location
  location_13 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_1 - package
  package_5 - package
  package_7 - package
  package_2 - package
  package_6 - package
  package_8 - package
  package_3 - package
  package_0 - package
  package_4 - package
  capacity-number_3 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_4)
  ; 642,589 -> 921,934
  (road location_11 location_10)
  ; 921,934 -> 642,589
  (road location_10 location_11)
  ; 642,589 -> 293,164
  (road location_11 location_8)
  ; 293,164 -> 642,589
  (road location_8 location_11)
  ; 567,304 -> 293,164
  (road location_2 location_8)
  ; 293,164 -> 567,304
  (road location_8 location_2)
  ; 567,304 -> 642,589
  (road location_2 location_11)
  ; 642,589 -> 567,304
  (road location_11 location_2)
  ; 363,292 -> 293,164
  (road location_7 location_8)
  ; 293,164 -> 363,292
  (road location_8 location_7)
  ; 363,292 -> 642,589
  (road location_7 location_11)
  ; 642,589 -> 363,292
  (road location_11 location_7)
  ; 363,292 -> 567,304
  (road location_7 location_2)
  ; 567,304 -> 363,292
  (road location_2 location_7)
  ; 2771,428 -> 2624,857
  (road location_0 location_14)
  ; 2624,857 -> 2771,428
  (road location_14 location_0)
  ; 2379,354 -> 2624,857
  (road location_3 location_14)
  ; 2624,857 -> 2379,354
  (road location_14 location_3)
  ; 2379,354 -> 2771,428
  (road location_3 location_0)
  ; 2771,428 -> 2379,354
  (road location_0 location_3)
  ; 2379,354 -> 2032,172
  (road location_3 location_1)
  ; 2032,172 -> 2379,354
  (road location_1 location_3)
  ; 2414,494 -> 2624,857
  (road location_6 location_14)
  ; 2624,857 -> 2414,494
  (road location_14 location_6)
  ; 2414,494 -> 2771,428
  (road location_6 location_0)
  ; 2771,428 -> 2414,494
  (road location_0 location_6)
  ; 2414,494 -> 2032,172
  (road location_6 location_1)
  ; 2032,172 -> 2414,494
  (road location_1 location_6)
  ; 2414,494 -> 2379,354
  (road location_6 location_3)
  ; 2379,354 -> 2414,494
  (road location_3 location_6)
  ; 1656,2139 -> 1972,2256
  (road location_12 location_4)
  ; 1972,2256 -> 1656,2139
  (road location_4 location_12)
  ; 1511,2323 -> 1972,2256
  (road location_9 location_4)
  ; 1972,2256 -> 1511,2323
  (road location_4 location_9)
  ; 1511,2323 -> 1656,2139
  (road location_9 location_12)
  ; 1656,2139 -> 1511,2323
  (road location_12 location_9)
  ; 1440,2147 -> 1972,2256
  (road location_5 location_4)
  ; 1972,2256 -> 1440,2147
  (road location_4 location_5)
  ; 1440,2147 -> 1656,2139
  (road location_5 location_12)
  ; 1656,2139 -> 1440,2147
  (road location_12 location_5)
  ; 1440,2147 -> 1511,2323
  (road location_5 location_9)
  ; 1511,2323 -> 1440,2147
  (road location_9 location_5)
  ; 1592,2411 -> 1972,2256
  (road location_13 location_4)
  ; 1972,2256 -> 1592,2411
  (road location_4 location_13)
  ; 1592,2411 -> 1656,2139
  (road location_13 location_12)
  ; 1656,2139 -> 1592,2411
  (road location_12 location_13)
  ; 1592,2411 -> 1511,2323
  (road location_13 location_9)
  ; 1511,2323 -> 1592,2411
  (road location_9 location_13)
  ; 1592,2411 -> 1440,2147
  (road location_13 location_5)
  ; 1440,2147 -> 1592,2411
  (road location_5 location_13)
  ; 921,934 <-> 2032,172
  (road location_10 location_1)
  (road location_1 location_10)
  (road location_10 location_9)
  (road location_9 location_10)
  (road location_14 location_4)
  (road location_4 location_14)
  (at package_1 location_5)
  (at package_5 location_6)
  (at package_7 location_5)
  (at package_2 location_12)
  (at package_6 location_11)
  (at package_8 location_11)
  (at package_3 location_10)
  (at package_0 location_0)
  (at package_4 location_4)
  (at vehicle_0 location_3)
  (capacity vehicle_0 capacity-number_1)
  (at vehicle_1 location_14)
  (capacity vehicle_1 capacity-number_1)
 )
 (:goal (and
  (at package_1 location_7)
  (at package_5 location_14)
  (at package_7 location_12)
  (at package_2 location_11)
  (at package_6 location_2)
  (at package_8 location_6)
  (at package_3 location_4)
  (at package_0 location_5)
  (at package_4 location_3)
 ))
 
)
