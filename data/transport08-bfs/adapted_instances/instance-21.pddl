; transport three-cities-sequential-1nodes-1000size-0degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-three-cities-sequential-1nodes-1000size-0degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  location_0 - location
  location_1 - location
  location_2 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_1 - package
  package_0 - package
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  ; 890,543 <-> 2384,50
  (road location_0 location_1)
  (road location_1 location_0)
  (road location_0 location_2)
  (road location_2 location_0)
  (road location_1 location_2)
  (road location_2 location_1)
  (at package_1 location_2)
  (at package_0 location_2)
  (at vehicle_0 location_1)
  (capacity vehicle_0 capacity-number_3)
  (at vehicle_1 location_1)
  (capacity vehicle_1 capacity-number_3)
 )
 (:goal (and
  (at package_1 location_0)
  (at package_0 location_1)
 ))
 
)
