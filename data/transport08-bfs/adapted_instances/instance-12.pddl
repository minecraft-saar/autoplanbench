; transport two-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-two-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed)
 (:domain transport)
 (:objects
  location_1 - location
  location_7 - location
  location_4 - location
  location_5 - location
  location_3 - location
  location_6 - location
  location_0 - location
  location_2 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_2 - package
  package_0 - package
  package_1 - package
  capacity-number_1 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  ; 742,542 -> 977,899
  (road location_3 location_1)
  ; 977,899 -> 742,542
  (road location_1 location_3)
  ; 742,542 -> 456,221
  (road location_3 location_4)
  ; 456,221 -> 742,542
  (road location_4 location_3)
  ; 564,783 -> 977,899
  (road location_0 location_1)
  ; 977,899 -> 564,783
  (road location_1 location_0)
  ; 564,783 -> 742,542
  (road location_0 location_3)
  ; 742,542 -> 564,783
  (road location_3 location_0)
  ; 2245,346 -> 2257,5
  (road location_5 location_7)
  ; 2257,5 -> 2245,346
  (road location_7 location_5)
  ; 2559,565 -> 2245,346
  (road location_6 location_5)
  ; 2245,346 -> 2559,565
  (road location_5 location_6)
  ; 2347,149 -> 2257,5
  (road location_2 location_7)
  ; 2257,5 -> 2347,149
  (road location_7 location_2)
  ; 2347,149 -> 2245,346
  (road location_2 location_5)
  ; 2245,346 -> 2347,149
  (road location_5 location_2)
  ; 2347,149 -> 2559,565
  (road location_2 location_6)
  ; 2559,565 -> 2347,149
  (road location_6 location_2)
  ; 977,899 <-> 2245,346
  (road location_1 location_5)
  (road location_5 location_1)
  (at package_2 location_4)
  (at package_0 location_4)
  (at package_1 location_1)
  (at vehicle_0 location_6)
  (capacity vehicle_0 capacity-number_3)
  (at vehicle_1 location_6)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_2 location_5)
  (at package_0 location_6)
  (at package_1 location_7)
 ))
 
)
