; transport two-cities-sequential-2nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-two-cities-sequential-2nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  location_3 - location
  location_1 - location
  location_0 - location
  location_2 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_1 - package
  package_0 - package
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  ; 912,799 -> 748,385
  (road location_0 location_3)
  ; 748,385 -> 912,799
  (road location_3 location_0)
  ; 2564,783 -> 2742,542
  (road location_2 location_1)
  ; 2742,542 -> 2564,783
  (road location_1 location_2)
  ; 912,799 <-> 2564,783
  (road location_0 location_2)
  (road location_2 location_0)
  (at package_1 location_3)
  (at package_0 location_3)
  (at vehicle_1 location_2)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_2)
  (capacity vehicle_0 capacity-number_0)
 )
 (:goal (and
  (at package_1 location_1)
  (at package_0 location_2)
 ))
 
)
