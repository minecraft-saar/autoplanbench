; transport two-cities-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-two-cities-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_5 - location
  location_3 - location
  location_6 - location
  location_2 - location
  location_7 - location
  location_0 - location
  location_1 - location
  location_4 - location
  location_9 - location
  location_8 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_3 - package
  package_0 - package
  package_1 - package
  package_2 - package
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  ; 688,479 -> 680,79
  (road location_7 location_5)
  ; 680,79 -> 688,479
  (road location_5 location_7)
  ; 688,479 -> 753,644
  (road location_7 location_6)
  ; 753,644 -> 688,479
  (road location_6 location_7)
  ; 383,275 -> 680,79
  (road location_1 location_5)
  ; 680,79 -> 383,275
  (road location_5 location_1)
  ; 383,275 -> 688,479
  (road location_1 location_7)
  ; 688,479 -> 383,275
  (road location_7 location_1)
  ; 945,511 -> 753,644
  (road location_9 location_6)
  ; 753,644 -> 945,511
  (road location_6 location_9)
  ; 945,511 -> 688,479
  (road location_9 location_7)
  ; 688,479 -> 945,511
  (road location_7 location_9)
  ; 2391,278 -> 2302,44
  (road location_2 location_3)
  ; 2302,44 -> 2391,278
  (road location_3 location_2)
  ; 2901,439 -> 2864,742
  (road location_4 location_0)
  ; 2864,742 -> 2901,439
  (road location_0 location_4)
  ; 2554,573 -> 2391,278
  (road location_8 location_2)
  ; 2391,278 -> 2554,573
  (road location_2 location_8)
  ; 2554,573 -> 2864,742
  (road location_8 location_0)
  ; 2864,742 -> 2554,573
  (road location_0 location_8)
  ; 2554,573 -> 2901,439
  (road location_8 location_4)
  ; 2901,439 -> 2554,573
  (road location_4 location_8)
  ; 945,511 <-> 2302,44
  (road location_9 location_3)
  (road location_3 location_9)
  (at package_3 location_9)
  (at package_0 location_5)
  (at package_1 location_5)
  (at package_2 location_6)
  (at vehicle_1 location_8)
  (capacity vehicle_1 capacity-number_3)
  (at vehicle_0 location_8)
  (capacity vehicle_0 capacity-number_4)
 )
 (:goal (and
  (at package_3 location_0)
  (at package_0 location_4)
  (at package_1 location_4)
  (at package_2 location_2)
 ))
 
)
