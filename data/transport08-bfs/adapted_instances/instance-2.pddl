; transport city-sequential-6nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-city-sequential-6nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed)
 (:domain transport)
 (:objects
  location_2 - location
  location_4 - location
  location_3 - location
  location_5 - location
  location_1 - location
  location_0 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_1 - package
  package_0 - package
  package_2 - package
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_0 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_0)
  ; 748,385 -> 890,543
  (road location_3 location_2)
  ; 890,543 -> 748,385
  (road location_2 location_3)
  ; 912,799 -> 890,543
  (road location_5 location_2)
  ; 890,543 -> 912,799
  (road location_2 location_5)
  ; 977,899 -> 890,543
  (road location_1 location_2)
  ; 890,543 -> 977,899
  (road location_2 location_1)
  ; 977,899 -> 912,799
  (road location_1 location_5)
  ; 912,799 -> 977,899
  (road location_5 location_1)
  ; 456,221 -> 384,50
  (road location_0 location_4)
  ; 384,50 -> 456,221
  (road location_4 location_0)
  ; 456,221 -> 748,385
  (road location_0 location_3)
  ; 748,385 -> 456,221
  (road location_3 location_0)
  (at package_1 location_1)
  (at package_0 location_5)
  (at package_2 location_5)
  (at vehicle_0 location_4)
  (capacity vehicle_0 capacity-number_0)
  (at vehicle_1 location_5)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_1 location_5)
  (at package_0 location_4)
  (at package_2 location_0)
 ))
 
)
