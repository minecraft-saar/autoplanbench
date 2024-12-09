; transport city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed

(define (problem transport-city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_10 - location
  location_5 - location
  location_4 - location
  location_8 - location
  location_0 - location
  location_2 - location
  location_3 - location
  location_9 - location
  location_11 - location
  location_7 - location
  location_1 - location
  location_6 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_1 - package
  package_0 - package
  package_3 - package
  package_4 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  ; 427,691 -> 315,398
  (road location_4 location_10)
  ; 315,398 -> 427,691
  (road location_10 location_4)
  ; 22,400 -> 315,398
  (road location_8 location_10)
  ; 315,398 -> 22,400
  (road location_10 location_8)
  ; 125,677 -> 315,398
  (road location_0 location_10)
  ; 315,398 -> 125,677
  (road location_10 location_0)
  ; 125,677 -> 427,691
  (road location_0 location_4)
  ; 427,691 -> 125,677
  (road location_4 location_0)
  ; 125,677 -> 22,400
  (road location_0 location_8)
  ; 22,400 -> 125,677
  (road location_8 location_0)
  ; 471,258 -> 315,398
  (road location_3 location_10)
  ; 315,398 -> 471,258
  (road location_10 location_3)
  ; 92,243 -> 315,398
  (road location_9 location_10)
  ; 315,398 -> 92,243
  (road location_10 location_9)
  ; 92,243 -> 22,400
  (road location_9 location_8)
  ; 22,400 -> 92,243
  (road location_8 location_9)
  ; 227,260 -> 315,398
  (road location_11 location_10)
  ; 315,398 -> 227,260
  (road location_10 location_11)
  ; 227,260 -> 22,400
  (road location_11 location_8)
  ; 22,400 -> 227,260
  (road location_8 location_11)
  ; 227,260 -> 471,258
  (road location_11 location_3)
  ; 471,258 -> 227,260
  (road location_3 location_11)
  ; 227,260 -> 92,243
  (road location_11 location_9)
  ; 92,243 -> 227,260
  (road location_9 location_11)
  ; 680,79 -> 471,258
  (road location_7 location_3)
  ; 471,258 -> 680,79
  (road location_3 location_7)
  ; 753,644 -> 916,940
  (road location_1 location_5)
  ; 916,940 -> 753,644
  (road location_5 location_1)
  ; 753,644 -> 427,691
  (road location_1 location_4)
  ; 427,691 -> 753,644
  (road location_4 location_1)
  ; 753,644 -> 973,444
  (road location_1 location_2)
  ; 973,444 -> 753,644
  (road location_2 location_1)
  ; 688,479 -> 427,691
  (road location_6 location_4)
  ; 427,691 -> 688,479
  (road location_4 location_6)
  ; 688,479 -> 973,444
  (road location_6 location_2)
  ; 973,444 -> 688,479
  (road location_2 location_6)
  ; 688,479 -> 471,258
  (road location_6 location_3)
  ; 471,258 -> 688,479
  (road location_3 location_6)
  ; 688,479 -> 753,644
  (road location_6 location_1)
  ; 753,644 -> 688,479
  (road location_1 location_6)
  (at package_2 location_0)
  (at package_1 location_8)
  (at package_0 location_1)
  (at package_3 location_9)
  (at package_4 location_6)
  (at vehicle_1 location_4)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_0 location_3)
  (capacity vehicle_0 capacity-number_2)
 )
 (:goal (and
  (at package_2 location_4)
  (at package_1 location_9)
  (at package_0 location_0)
  (at package_3 location_5)
  (at package_4 location_5)
 ))
 
)
