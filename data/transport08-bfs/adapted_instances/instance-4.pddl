; transport city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_10 - location
  location_4 - location
  location_8 - location
  location_1 - location
  location_9 - location
  location_6 - location
  location_0 - location
  location_7 - location
  location_2 - location
  location_5 - location
  location_3 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_1 - package
  package_2 - package
  package_4 - package
  package_3 - package
  package_0 - package
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  ; 748,385 -> 890,543
  (road location_4 location_11)
  ; 890,543 -> 748,385
  (road location_11 location_4)
  ; 912,799 -> 890,543
  (road location_8 location_11)
  ; 890,543 -> 912,799
  (road location_11 location_8)
  ; 977,899 -> 912,799
  (road location_1 location_8)
  ; 912,799 -> 977,899
  (road location_8 location_1)
  ; 456,221 -> 384,50
  (road location_9 location_10)
  ; 384,50 -> 456,221
  (road location_10 location_9)
  ; 456,221 -> 748,385
  (road location_9 location_4)
  ; 748,385 -> 456,221
  (road location_4 location_9)
  ; 742,542 -> 890,543
  (road location_6 location_11)
  ; 890,543 -> 742,542
  (road location_11 location_6)
  ; 742,542 -> 748,385
  (road location_6 location_4)
  ; 748,385 -> 742,542
  (road location_4 location_6)
  ; 742,542 -> 912,799
  (road location_6 location_8)
  ; 912,799 -> 742,542
  (road location_8 location_6)
  ; 564,783 -> 742,542
  (road location_0 location_6)
  ; 742,542 -> 564,783
  (road location_6 location_0)
  ; 273,425 -> 456,221
  (road location_7 location_9)
  ; 456,221 -> 273,425
  (road location_9 location_7)
  ; 566,552 -> 890,543
  (road location_2 location_11)
  ; 890,543 -> 566,552
  (road location_11 location_2)
  ; 566,552 -> 748,385
  (road location_2 location_4)
  ; 748,385 -> 566,552
  (road location_4 location_2)
  ; 566,552 -> 742,542
  (road location_2 location_6)
  ; 742,542 -> 566,552
  (road location_6 location_2)
  ; 566,552 -> 564,783
  (road location_2 location_0)
  ; 564,783 -> 566,552
  (road location_0 location_2)
  ; 566,552 -> 273,425
  (road location_2 location_7)
  ; 273,425 -> 566,552
  (road location_7 location_2)
  ; 174,643 -> 273,425
  (road location_5 location_7)
  ; 273,425 -> 174,643
  (road location_7 location_5)
  ; 930,259 -> 890,543
  (road location_3 location_11)
  ; 890,543 -> 930,259
  (road location_11 location_3)
  ; 930,259 -> 748,385
  (road location_3 location_4)
  ; 748,385 -> 930,259
  (road location_4 location_3)
  (at package_1 location_11)
  (at package_2 location_0)
  (at package_4 location_2)
  (at package_3 location_5)
  (at package_0 location_8)
  (at vehicle_0 location_10)
  (capacity vehicle_0 capacity-number_0)
  (at vehicle_1 location_9)
  (capacity vehicle_1 capacity-number_2)
 )
 (:goal (and
  (at package_1 location_7)
  (at package_2 location_11)
  (at package_4 location_1)
  (at package_3 location_2)
  (at package_0 location_11)
 ))
 
)
