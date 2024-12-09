; transport three-cities-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-three-cities-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_7 - location
  location_13 - location
  location_10 - location
  location_4 - location
  location_5 - location
  location_14 - location
  location_3 - location
  location_2 - location
  location_6 - location
  location_12 - location
  location_0 - location
  location_1 - location
  location_9 - location
  location_8 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_3 - package
  package_2 - package
  package_0 - package
  package_1 - package
  capacity-number_3 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  ; 688,479 -> 680,79
  (road location_14 location_11)
  ; 680,79 -> 688,479
  (road location_11 location_14)
  ; 688,479 -> 753,644
  (road location_14 location_10)
  ; 753,644 -> 688,479
  (road location_10 location_14)
  ; 383,275 -> 680,79
  (road location_6 location_11)
  ; 680,79 -> 383,275
  (road location_11 location_6)
  ; 383,275 -> 688,479
  (road location_6 location_14)
  ; 688,479 -> 383,275
  (road location_14 location_6)
  ; 945,511 -> 753,644
  (road location_1 location_10)
  ; 753,644 -> 945,511
  (road location_10 location_1)
  ; 945,511 -> 688,479
  (road location_1 location_14)
  ; 688,479 -> 945,511
  (road location_14 location_1)
  ; 2391,278 -> 2302,44
  (road location_4 location_7)
  ; 2302,44 -> 2391,278
  (road location_7 location_4)
  ; 2901,439 -> 2864,742
  (road location_12 location_3)
  ; 2864,742 -> 2901,439
  (road location_3 location_12)
  ; 2554,573 -> 2391,278
  (road location_9 location_4)
  ; 2391,278 -> 2554,573
  (road location_4 location_9)
  ; 2554,573 -> 2864,742
  (road location_9 location_3)
  ; 2864,742 -> 2554,573
  (road location_3 location_9)
  ; 2554,573 -> 2901,439
  (road location_9 location_12)
  ; 2901,439 -> 2554,573
  (road location_12 location_9)
  ; 1108,2660 -> 1432,2582
  (road location_5 location_13)
  ; 1432,2582 -> 1108,2660
  (road location_13 location_5)
  ; 1429,2973 -> 1432,2582
  (road location_2 location_13)
  ; 1432,2582 -> 1429,2973
  (road location_13 location_2)
  ; 1274,2308 -> 1432,2582
  (road location_0 location_13)
  ; 1432,2582 -> 1274,2308
  (road location_13 location_0)
  ; 1274,2308 -> 1108,2660
  (road location_0 location_5)
  ; 1108,2660 -> 1274,2308
  (road location_5 location_0)
  ; 1387,2219 -> 1432,2582
  (road location_8 location_13)
  ; 1432,2582 -> 1387,2219
  (road location_13 location_8)
  ; 1387,2219 -> 1274,2308
  (road location_8 location_0)
  ; 1274,2308 -> 1387,2219
  (road location_0 location_8)
  ; 945,511 <-> 2302,44
  (road location_1 location_7)
  (road location_7 location_1)
  (road location_1 location_13)
  (road location_13 location_1)
  (road location_7 location_13)
  (road location_13 location_7)
  (at package_3 location_3)
  (at package_2 location_9)
  (at package_0 location_14)
  (at package_1 location_3)
  (at vehicle_1 location_7)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_0 location_0)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_3 location_7)
  (at package_2 location_14)
  (at package_0 location_2)
  (at package_1 location_10)
 ))
 
)
