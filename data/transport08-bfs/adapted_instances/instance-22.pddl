; transport three-cities-sequential-2nodes-1000size-1degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-three-cities-sequential-2nodes-1000size-1degree-100mindistance-2trucks-3packages-2008seed)
 (:domain transport)
 (:objects
  location_4 - location
  location_3 - location
  location_5 - location
  location_0 - location
  location_2 - location
  location_1 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_0 - package
  package_2 - package
  package_1 - package
  capacity-number_3 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  ; 912,799 -> 748,385
  (road location_0 location_4)
  ; 748,385 -> 912,799
  (road location_4 location_0)
  ; 2564,783 -> 2742,542
  (road location_2 location_3)
  ; 2742,542 -> 2564,783
  (road location_3 location_2)
  ; 1566,2552 -> 1273,2425
  (road location_1 location_5)
  ; 1273,2425 -> 1566,2552
  (road location_5 location_1)
  ; 912,799 <-> 2564,783
  (road location_0 location_2)
  (road location_2 location_0)
  (road location_0 location_5)
  (road location_5 location_0)
  (road location_3 location_1)
  (road location_1 location_3)
  (at package_0 location_2)
  (at package_2 location_0)
  (at package_1 location_1)
  (at vehicle_0 location_5)
  (capacity vehicle_0 capacity-number_2)
  (at vehicle_1 location_2)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_0 location_0)
  (at package_2 location_2)
  (at package_1 location_4)
 ))
 
)
