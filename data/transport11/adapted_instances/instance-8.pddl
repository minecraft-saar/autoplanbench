; transport city-sequential-13nodes-1000size-3degree-100mindistance-3trucks-6packages-2012seed

(define (problem transport-city-sequential-13nodes-1000size-3degree-100mindistance-3trucks-6packages-2012seed)
 (:domain transport)
 (:objects
  location_6 - location
  location_8 - location
  location_1 - location
  location_0 - location
  location_5 - location
  location_2 - location
  location_9 - location
  location_4 - location
  location_7 - location
  location_12 - location
  location_11 - location
  location_3 - location
  location_10 - location
  vehicle_1 - vehicle
  vehicle_2 - vehicle
  vehicle_0 - vehicle
  package_3 - package
  package_5 - package
  package_1 - package
  package_0 - package
  package_2 - package
  package_4 - package
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
  ; 235,346 -> 268,635
  (road location_8 location_6)
  ; 268,635 -> 235,346
  (road location_6 location_8)
  ; 241,84 -> 235,346
  (road location_0 location_8)
  ; 235,346 -> 241,84
  (road location_8 location_0)
  ; 241,84 -> 510,22
  (road location_0 location_1)
  ; 510,22 -> 241,84
  (road location_1 location_0)
  ; 804,55 -> 510,22
  (road location_2 location_1)
  ; 510,22 -> 804,55
  (road location_1 location_2)
  ; 602,540 -> 745,693
  (road location_9 location_5)
  ; 745,693 -> 602,540
  (road location_5 location_9)
  ; 928,336 -> 804,55
  (road location_4 location_2)
  ; 804,55 -> 928,336
  (road location_2 location_4)
  ; 529,912 -> 745,693
  (road location_7 location_5)
  ; 745,693 -> 529,912
  (road location_5 location_7)
  ; 488,438 -> 268,635
  (road location_12 location_6)
  ; 268,635 -> 488,438
  (road location_6 location_12)
  ; 488,438 -> 235,346
  (road location_12 location_8)
  ; 235,346 -> 488,438
  (road location_8 location_12)
  ; 488,438 -> 602,540
  (road location_12 location_9)
  ; 602,540 -> 488,438
  (road location_9 location_12)
  ; 678,373 -> 602,540
  (road location_11 location_9)
  ; 602,540 -> 678,373
  (road location_9 location_11)
  ; 678,373 -> 928,336
  (road location_11 location_4)
  ; 928,336 -> 678,373
  (road location_4 location_11)
  ; 678,373 -> 488,438
  (road location_11 location_12)
  ; 488,438 -> 678,373
  (road location_12 location_11)
  ; 694,972 -> 745,693
  (road location_3 location_5)
  ; 745,693 -> 694,972
  (road location_5 location_3)
  ; 694,972 -> 529,912
  (road location_3 location_7)
  ; 529,912 -> 694,972
  (road location_7 location_3)
  ; 632,185 -> 510,22
  (road location_10 location_1)
  ; 510,22 -> 632,185
  (road location_1 location_10)
  ; 632,185 -> 804,55
  (road location_10 location_2)
  ; 804,55 -> 632,185
  (road location_2 location_10)
  ; 632,185 -> 488,438
  (road location_10 location_12)
  ; 488,438 -> 632,185
  (road location_12 location_10)
  ; 632,185 -> 678,373
  (road location_10 location_11)
  ; 678,373 -> 632,185
  (road location_11 location_10)
  (at package_3 location_11)
  (at package_5 location_5)
  (at package_1 location_1)
  (at package_0 location_5)
  (at package_2 location_12)
  (at package_4 location_7)
  (at vehicle_1 location_3)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_2 location_1)
  (capacity vehicle_2 capacity-number_1)
  (at vehicle_0 location_8)
  (capacity vehicle_0 capacity-number_0)
 )
 (:goal (and
  (at package_3 location_3)
  (at package_5 location_0)
  (at package_1 location_5)
  (at package_0 location_6)
  (at package_2 location_1)
  (at package_4 location_1)
 ))
 
)
