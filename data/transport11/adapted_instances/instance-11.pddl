; transport two-cities-sequential-7nodes-1000size-4degree-100mindistance-2trucks-8packages-2012seed

(define (problem transport-two-cities-sequential-7nodes-1000size-4degree-100mindistance-2trucks-8packages-2012seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_5 - location
  location_12 - location
  location_2 - location
  location_3 - location
  location_0 - location
  location_1 - location
  location_13 - location
  location_6 - location
  location_10 - location
  location_8 - location
  location_7 - location
  location_4 - location
  location_9 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_7 - package
  package_0 - package
  package_2 - package
  package_1 - package
  package_3 - package
  package_5 - package
  package_4 - package
  package_6 - package
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_1)
  ; 567,304 -> 642,589
  (road location_12 location_11)
  ; 642,589 -> 567,304
  (road location_11 location_12)
  ; 363,292 -> 642,589
  (road location_3 location_11)
  ; 642,589 -> 363,292
  (road location_11 location_3)
  ; 363,292 -> 567,304
  (road location_3 location_12)
  ; 567,304 -> 363,292
  (road location_12 location_3)
  ; 624,857 -> 642,589
  (road location_1 location_11)
  ; 642,589 -> 624,857
  (road location_11 location_1)
  ; 771,428 -> 642,589
  (road location_6 location_11)
  ; 642,589 -> 771,428
  (road location_11 location_6)
  ; 771,428 -> 567,304
  (road location_6 location_12)
  ; 567,304 -> 771,428
  (road location_12 location_6)
  ; 771,428 -> 363,292
  (road location_6 location_3)
  ; 363,292 -> 771,428
  (road location_3 location_6)
  ; 771,428 -> 624,857
  (road location_6 location_1)
  ; 624,857 -> 771,428
  (road location_1 location_6)
  ; 32,172 -> 363,292
  (road location_8 location_3)
  ; 363,292 -> 32,172
  (road location_3 location_8)
  ; 414,494 -> 642,589
  (road location_4 location_11)
  ; 642,589 -> 414,494
  (road location_11 location_4)
  ; 414,494 -> 567,304
  (road location_4 location_12)
  ; 567,304 -> 414,494
  (road location_12 location_4)
  ; 414,494 -> 363,292
  (road location_4 location_3)
  ; 363,292 -> 414,494
  (road location_3 location_4)
  ; 414,494 -> 624,857
  (road location_4 location_1)
  ; 624,857 -> 414,494
  (road location_1 location_4)
  ; 414,494 -> 771,428
  (road location_4 location_6)
  ; 771,428 -> 414,494
  (road location_6 location_4)
  ; 414,494 -> 32,172
  (road location_4 location_8)
  ; 32,172 -> 414,494
  (road location_8 location_4)
  ; 2656,139 -> 2972,256
  (road location_2 location_5)
  ; 2972,256 -> 2656,139
  (road location_5 location_2)
  ; 2511,323 -> 2972,256
  (road location_0 location_5)
  ; 2972,256 -> 2511,323
  (road location_5 location_0)
  ; 2511,323 -> 2656,139
  (road location_0 location_2)
  ; 2656,139 -> 2511,323
  (road location_2 location_0)
  ; 2440,147 -> 2656,139
  (road location_13 location_2)
  ; 2656,139 -> 2440,147
  (road location_2 location_13)
  ; 2440,147 -> 2511,323
  (road location_13 location_0)
  ; 2511,323 -> 2440,147
  (road location_0 location_13)
  ; 2592,411 -> 2972,256
  (road location_10 location_5)
  ; 2972,256 -> 2592,411
  (road location_5 location_10)
  ; 2592,411 -> 2656,139
  (road location_10 location_2)
  ; 2656,139 -> 2592,411
  (road location_2 location_10)
  ; 2592,411 -> 2511,323
  (road location_10 location_0)
  ; 2511,323 -> 2592,411
  (road location_0 location_10)
  ; 2592,411 -> 2440,147
  (road location_10 location_13)
  ; 2440,147 -> 2592,411
  (road location_13 location_10)
  ; 2841,750 -> 2972,256
  (road location_7 location_5)
  ; 2972,256 -> 2841,750
  (road location_5 location_7)
  ; 2841,750 -> 2592,411
  (road location_7 location_10)
  ; 2592,411 -> 2841,750
  (road location_10 location_7)
  ; 2454,989 -> 2841,750
  (road location_9 location_7)
  ; 2841,750 -> 2454,989
  (road location_7 location_9)
  ; 771,428 <-> 2440,147
  (road location_6 location_13)
  (road location_13 location_6)
  (at package_7 location_4)
  (at package_0 location_6)
  (at package_2 location_6)
  (at package_1 location_12)
  (at package_3 location_12)
  (at package_5 location_1)
  (at package_4 location_12)
  (at package_6 location_1)
  (at vehicle_1 location_5)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_13)
  (capacity vehicle_0 capacity-number_0)
 )
 (:goal (and
  (at package_7 location_7)
  (at package_0 location_2)
  (at package_2 location_13)
  (at package_1 location_7)
  (at package_3 location_10)
  (at package_5 location_10)
  (at package_4 location_5)
  (at package_6 location_13)
 ))
 
)
