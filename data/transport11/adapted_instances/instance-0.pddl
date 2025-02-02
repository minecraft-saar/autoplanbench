; transport city-sequential-3nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-city-sequential-3nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  location_1 - location
  location_2 - location
  location_0 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_1 - package
  package_0 - package
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  ; 748,385 -> 890,543
  (road location_0 location_1)
  ; 890,543 -> 748,385
  (road location_1 location_0)
  ; 748,385 -> 384,50
  (road location_0 location_2)
  ; 384,50 -> 748,385
  (road location_2 location_0)
  (at package_1 location_0)
  (at package_0 location_0)
  (at vehicle_1 location_0)
  (capacity vehicle_1 capacity-number_3)
  (at vehicle_0 location_1)
  (capacity vehicle_0 capacity-number_0)
 )
 (:goal (and
  (at package_1 location_2)
  (at package_0 location_2)
 ))
 
)
