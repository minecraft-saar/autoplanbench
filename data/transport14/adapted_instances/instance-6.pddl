; transport city-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-city-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_19 - location
  location_17 - location
  location_16 - location
  location_4 - location
  location_14 - location
  location_2 - location
  location_13 - location
  location_8 - location
  location_7 - location
  location_1 - location
  location_3 - location
  location_15 - location
  location_0 - location
  location_6 - location
  location_18 - location
  location_10 - location
  location_11 - location
  location_12 - location
  location_5 - location
  location_9 - location
  vehicle_2 - vehicle
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_3 - package
  package_0 - package
  package_4 - package
  package_2 - package
  package_5 - package
  package_1 - package
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
  ; 22,400 -> 315,398
  (road location_4 location_19)
  ; 315,398 -> 22,400
  (road location_19 location_4)
  ; 125,677 -> 427,691
  (road location_14 location_16)
  ; 427,691 -> 125,677
  (road location_16 location_14)
  ; 125,677 -> 22,400
  (road location_14 location_4)
  ; 22,400 -> 125,677
  (road location_4 location_14)
  ; 471,258 -> 315,398
  (road location_13 location_19)
  ; 315,398 -> 471,258
  (road location_19 location_13)
  ; 92,243 -> 315,398
  (road location_8 location_19)
  ; 315,398 -> 92,243
  (road location_19 location_8)
  ; 92,243 -> 22,400
  (road location_8 location_4)
  ; 22,400 -> 92,243
  (road location_4 location_8)
  ; 227,260 -> 315,398
  (road location_7 location_19)
  ; 315,398 -> 227,260
  (road location_19 location_7)
  ; 227,260 -> 22,400
  (road location_7 location_4)
  ; 22,400 -> 227,260
  (road location_4 location_7)
  ; 227,260 -> 471,258
  (road location_7 location_13)
  ; 471,258 -> 227,260
  (road location_13 location_7)
  ; 227,260 -> 92,243
  (road location_7 location_8)
  ; 92,243 -> 227,260
  (road location_8 location_7)
  ; 680,79 -> 471,258
  (road location_1 location_13)
  ; 471,258 -> 680,79
  (road location_13 location_1)
  ; 753,644 -> 973,444
  (road location_3 location_2)
  ; 973,444 -> 753,644
  (road location_2 location_3)
  ; 688,479 -> 973,444
  (road location_15 location_2)
  ; 973,444 -> 688,479
  (road location_2 location_15)
  ; 688,479 -> 753,644
  (road location_15 location_3)
  ; 753,644 -> 688,479
  (road location_3 location_15)
  ; 197,108 -> 92,243
  (road location_0 location_8)
  ; 92,243 -> 197,108
  (road location_8 location_0)
  ; 197,108 -> 227,260
  (road location_0 location_7)
  ; 227,260 -> 197,108
  (road location_7 location_0)
  ; 630,336 -> 471,258
  (road location_6 location_13)
  ; 471,258 -> 630,336
  (road location_13 location_6)
  ; 630,336 -> 680,79
  (road location_6 location_1)
  ; 680,79 -> 630,336
  (road location_1 location_6)
  ; 630,336 -> 688,479
  (road location_6 location_15)
  ; 688,479 -> 630,336
  (road location_15 location_6)
  ; 66,817 -> 125,677
  (road location_18 location_14)
  ; 125,677 -> 66,817
  (road location_14 location_18)
  ; 878,76 -> 680,79
  (road location_10 location_1)
  ; 680,79 -> 878,76
  (road location_1 location_10)
  ; 793,194 -> 680,79
  (road location_11 location_1)
  ; 680,79 -> 793,194
  (road location_1 location_11)
  ; 793,194 -> 630,336
  (road location_11 location_6)
  ; 630,336 -> 793,194
  (road location_6 location_11)
  ; 793,194 -> 878,76
  (road location_11 location_10)
  ; 878,76 -> 793,194
  (road location_10 location_11)
  ; 166,870 -> 125,677
  (road location_12 location_14)
  ; 125,677 -> 166,870
  (road location_14 location_12)
  ; 166,870 -> 66,817
  (road location_12 location_18)
  ; 66,817 -> 166,870
  (road location_18 location_12)
  ; 833,827 -> 916,940
  (road location_5 location_17)
  ; 916,940 -> 833,827
  (road location_17 location_5)
  ; 833,827 -> 753,644
  (road location_5 location_3)
  ; 753,644 -> 833,827
  (road location_3 location_5)
  ; 41,918 -> 125,677
  (road location_9 location_14)
  ; 125,677 -> 41,918
  (road location_14 location_9)
  ; 41,918 -> 66,817
  (road location_9 location_18)
  ; 66,817 -> 41,918
  (road location_18 location_9)
  ; 41,918 -> 166,870
  (road location_9 location_12)
  ; 166,870 -> 41,918
  (road location_12 location_9)
  (at package_3 location_14)
  (at package_0 location_15)
  (at package_4 location_1)
  (at package_2 location_8)
  (at package_5 location_11)
  (at package_1 location_9)
  (at vehicle_2 location_8)
  (capacity vehicle_2 capacity-number_0)
  (at vehicle_0 location_6)
  (capacity vehicle_0 capacity-number_0)
  (at vehicle_1 location_8)
  (capacity vehicle_1 capacity-number_0)
 )
 (:goal (and
  (at package_3 location_1)
  (at package_0 location_5)
  (at package_4 location_9)
  (at package_2 location_12)
  (at package_5 location_0)
  (at package_1 location_19)
 ))
 
)
