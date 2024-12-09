; transport city-sequential-9nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-city-sequential-9nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed)
 (:domain transport)
 (:objects
  location_3 - location
  location_1 - location
  location_5 - location
  location_7 - location
  location_6 - location
  location_4 - location
  location_0 - location
  location_8 - location
  location_2 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_3 - package
  package_1 - package
  package_0 - package
  package_2 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_1)
  ; 748,385 -> 890,543
  (road location_5 location_3)
  ; 890,543 -> 748,385
  (road location_3 location_5)
  ; 912,799 -> 890,543
  (road location_7 location_3)
  ; 890,543 -> 912,799
  (road location_3 location_7)
  ; 977,899 -> 890,543
  (road location_6 location_3)
  ; 890,543 -> 977,899
  (road location_3 location_6)
  ; 977,899 -> 912,799
  (road location_6 location_7)
  ; 912,799 -> 977,899
  (road location_7 location_6)
  ; 456,221 -> 384,50
  (road location_4 location_1)
  ; 384,50 -> 456,221
  (road location_1 location_4)
  ; 456,221 -> 748,385
  (road location_4 location_5)
  ; 748,385 -> 456,221
  (road location_5 location_4)
  ; 742,542 -> 890,543
  (road location_0 location_3)
  ; 890,543 -> 742,542
  (road location_3 location_0)
  ; 742,542 -> 748,385
  (road location_0 location_5)
  ; 748,385 -> 742,542
  (road location_5 location_0)
  ; 742,542 -> 912,799
  (road location_0 location_7)
  ; 912,799 -> 742,542
  (road location_7 location_0)
  ; 564,783 -> 912,799
  (road location_8 location_7)
  ; 912,799 -> 564,783
  (road location_7 location_8)
  ; 564,783 -> 742,542
  (road location_8 location_0)
  ; 742,542 -> 564,783
  (road location_0 location_8)
  ; 273,425 -> 384,50
  (road location_2 location_1)
  ; 384,50 -> 273,425
  (road location_1 location_2)
  ; 273,425 -> 456,221
  (road location_2 location_4)
  ; 456,221 -> 273,425
  (road location_4 location_2)
  (at package_3 location_4)
  (at package_1 location_6)
  (at package_0 location_4)
  (at package_2 location_4)
  (at vehicle_0 location_4)
  (capacity vehicle_0 capacity-number_4)
  (at vehicle_1 location_2)
  (capacity vehicle_1 capacity-number_1)
 )
 (:goal (and
  (at package_3 location_2)
  (at package_1 location_5)
  (at package_0 location_3)
  (at package_2 location_8)
 ))
 
)
