; transport three-cities-sequential-3nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-three-cities-sequential-3nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed)
 (:domain transport)
 (:objects
  location_2 - location
  location_0 - location
  location_1 - location
  location_8 - location
  location_5 - location
  location_4 - location
  location_6 - location
  location_3 - location
  location_7 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_1 - package
  package_3 - package
  package_0 - package
  package_2 - package
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  ; 748,385 -> 890,543
  (road location_6 location_2)
  ; 890,543 -> 748,385
  (road location_2 location_6)
  ; 748,385 -> 384,50
  (road location_6 location_8)
  ; 384,50 -> 748,385
  (road location_8 location_6)
  ; 2564,783 -> 2742,542
  (road location_5 location_0)
  ; 2742,542 -> 2564,783
  (road location_0 location_5)
  ; 2273,425 -> 2742,542
  (road location_3 location_0)
  ; 2742,542 -> 2273,425
  (road location_0 location_3)
  ; 2273,425 -> 2564,783
  (road location_3 location_5)
  ; 2564,783 -> 2273,425
  (road location_5 location_3)
  ; 1174,2643 -> 1566,2552
  (road location_4 location_1)
  ; 1566,2552 -> 1174,2643
  (road location_1 location_4)
  ; 1946,2916 -> 1566,2552
  (road location_7 location_1)
  ; 1566,2552 -> 1946,2916
  (road location_1 location_7)
  ; 890,543 <-> 2273,425
  (road location_2 location_3)
  (road location_3 location_2)
  (road location_2 location_1)
  (road location_1 location_2)
  (road location_3 location_4)
  (road location_4 location_3)
  (at package_1 location_1)
  (at package_3 location_8)
  (at package_0 location_7)
  (at package_2 location_8)
  (at vehicle_1 location_6)
  (capacity vehicle_1 capacity-number_1)
  (at vehicle_0 location_1)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_1 location_2)
  (at package_3 location_5)
  (at package_0 location_6)
  (at package_2 location_6)
 ))
 
)
