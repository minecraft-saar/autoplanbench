; transport city-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-city-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_3 - location
  location_1 - location
  location_2 - location
  location_0 - location
  location_4 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_0 - package
  package_2 - package
  package_3 - package
  package_1 - package
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  ; 688,479 -> 680,79
  (road location_2 location_3)
  ; 680,79 -> 688,479
  (road location_3 location_2)
  ; 688,479 -> 753,644
  (road location_2 location_1)
  ; 753,644 -> 688,479
  (road location_1 location_2)
  ; 383,275 -> 680,79
  (road location_0 location_3)
  ; 680,79 -> 383,275
  (road location_3 location_0)
  ; 383,275 -> 688,479
  (road location_0 location_2)
  ; 688,479 -> 383,275
  (road location_2 location_0)
  ; 945,511 -> 753,644
  (road location_4 location_1)
  ; 753,644 -> 945,511
  (road location_1 location_4)
  ; 945,511 -> 688,479
  (road location_4 location_2)
  ; 688,479 -> 945,511
  (road location_2 location_4)
  (at package_0 location_3)
  (at package_2 location_3)
  (at package_3 location_2)
  (at package_1 location_1)
  (at vehicle_1 location_1)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_3)
  (capacity vehicle_0 capacity-number_3)
 )
 (:goal (and
  (at package_0 location_1)
  (at package_2 location_1)
  (at package_3 location_3)
  (at package_1 location_4)
 ))
 
)
