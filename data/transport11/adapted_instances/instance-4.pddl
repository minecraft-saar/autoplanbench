; transport two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_2 - location
  location_3 - location
  location_8 - location
  location_6 - location
  location_0 - location
  location_10 - location
  location_9 - location
  location_7 - location
  location_4 - location
  location_5 - location
  location_1 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_2 - package
  package_3 - package
  package_1 - package
  package_0 - package
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  ; 748,385 -> 890,543
  (road location_6 location_11)
  ; 890,543 -> 748,385
  (road location_11 location_6)
  ; 912,799 -> 890,543
  (road location_10 location_11)
  ; 890,543 -> 912,799
  (road location_11 location_10)
  ; 912,799 -> 748,385
  (road location_10 location_6)
  ; 748,385 -> 912,799
  (road location_6 location_10)
  ; 977,899 -> 890,543
  (road location_7 location_11)
  ; 890,543 -> 977,899
  (road location_11 location_7)
  ; 977,899 -> 912,799
  (road location_7 location_10)
  ; 912,799 -> 977,899
  (road location_10 location_7)
  ; 456,221 -> 384,50
  (road location_5 location_3)
  ; 384,50 -> 456,221
  (road location_3 location_5)
  ; 456,221 -> 748,385
  (road location_5 location_6)
  ; 748,385 -> 456,221
  (road location_6 location_5)
  ; 2564,783 -> 2742,542
  (road location_8 location_2)
  ; 2742,542 -> 2564,783
  (road location_2 location_8)
  ; 2273,425 -> 2564,783
  (road location_0 location_8)
  ; 2564,783 -> 2273,425
  (road location_8 location_0)
  ; 2566,552 -> 2742,542
  (road location_9 location_2)
  ; 2742,542 -> 2566,552
  (road location_2 location_9)
  ; 2566,552 -> 2564,783
  (road location_9 location_8)
  ; 2564,783 -> 2566,552
  (road location_8 location_9)
  ; 2566,552 -> 2273,425
  (road location_9 location_0)
  ; 2273,425 -> 2566,552
  (road location_0 location_9)
  ; 2174,643 -> 2564,783
  (road location_4 location_8)
  ; 2564,783 -> 2174,643
  (road location_8 location_4)
  ; 2174,643 -> 2273,425
  (road location_4 location_0)
  ; 2273,425 -> 2174,643
  (road location_0 location_4)
  ; 2174,643 -> 2566,552
  (road location_4 location_9)
  ; 2566,552 -> 2174,643
  (road location_9 location_4)
  ; 2946,916 -> 2742,542
  (road location_1 location_2)
  ; 2742,542 -> 2946,916
  (road location_2 location_1)
  ; 2946,916 -> 2564,783
  (road location_1 location_8)
  ; 2564,783 -> 2946,916
  (road location_8 location_1)
  ; 977,899 <-> 2174,643
  (road location_7 location_4)
  (road location_4 location_7)
  (at package_2 location_5)
  (at package_3 location_3)
  (at package_1 location_11)
  (at package_0 location_10)
  (at vehicle_0 location_4)
  (capacity vehicle_0 capacity-number_3)
  (at vehicle_1 location_8)
  (capacity vehicle_1 capacity-number_0)
 )
 (:goal (and
  (at package_2 location_2)
  (at package_3 location_4)
  (at package_1 location_0)
  (at package_0 location_4)
 ))
 
)
