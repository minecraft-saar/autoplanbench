; transport city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed)
 (:domain transport)
 (:objects
  location_9 - location
  location_1 - location
  location_6 - location
  location_2 - location
  location_3 - location
  location_11 - location
  location_8 - location
  location_10 - location
  location_0 - location
  location_5 - location
  location_7 - location
  location_4 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_4 - package
  package_0 - package
  package_3 - package
  package_1 - package
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  ; 748,385 -> 890,543
  (road location_6 location_9)
  ; 890,543 -> 748,385
  (road location_9 location_6)
  ; 912,799 -> 890,543
  (road location_2 location_9)
  ; 890,543 -> 912,799
  (road location_9 location_2)
  ; 977,899 -> 912,799
  (road location_3 location_2)
  ; 912,799 -> 977,899
  (road location_2 location_3)
  ; 456,221 -> 384,50
  (road location_11 location_1)
  ; 384,50 -> 456,221
  (road location_1 location_11)
  ; 456,221 -> 748,385
  (road location_11 location_6)
  ; 748,385 -> 456,221
  (road location_6 location_11)
  ; 742,542 -> 890,543
  (road location_8 location_9)
  ; 890,543 -> 742,542
  (road location_9 location_8)
  ; 742,542 -> 748,385
  (road location_8 location_6)
  ; 748,385 -> 742,542
  (road location_6 location_8)
  ; 742,542 -> 912,799
  (road location_8 location_2)
  ; 912,799 -> 742,542
  (road location_2 location_8)
  ; 564,783 -> 742,542
  (road location_10 location_8)
  ; 742,542 -> 564,783
  (road location_8 location_10)
  ; 273,425 -> 456,221
  (road location_0 location_11)
  ; 456,221 -> 273,425
  (road location_11 location_0)
  ; 566,552 -> 890,543
  (road location_5 location_9)
  ; 890,543 -> 566,552
  (road location_9 location_5)
  ; 566,552 -> 748,385
  (road location_5 location_6)
  ; 748,385 -> 566,552
  (road location_6 location_5)
  ; 566,552 -> 742,542
  (road location_5 location_8)
  ; 742,542 -> 566,552
  (road location_8 location_5)
  ; 566,552 -> 564,783
  (road location_5 location_10)
  ; 564,783 -> 566,552
  (road location_10 location_5)
  ; 566,552 -> 273,425
  (road location_5 location_0)
  ; 273,425 -> 566,552
  (road location_0 location_5)
  ; 174,643 -> 273,425
  (road location_7 location_0)
  ; 273,425 -> 174,643
  (road location_0 location_7)
  ; 930,259 -> 890,543
  (road location_4 location_9)
  ; 890,543 -> 930,259
  (road location_9 location_4)
  ; 930,259 -> 748,385
  (road location_4 location_6)
  ; 748,385 -> 930,259
  (road location_6 location_4)
  (at package_2 location_9)
  (at package_4 location_10)
  (at package_0 location_5)
  (at package_3 location_7)
  (at package_1 location_2)
  (at vehicle_1 location_1)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_11)
  (capacity vehicle_0 capacity-number_2)
 )
 (:goal (and
  (at package_2 location_0)
  (at package_4 location_9)
  (at package_0 location_3)
  (at package_3 location_5)
  (at package_1 location_9)
 ))
 
)
