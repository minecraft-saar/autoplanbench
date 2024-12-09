; transport city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
 (:domain transport)
 (:objects
  location_17 - location
  location_1 - location
  location_14 - location
  location_6 - location
  location_9 - location
  location_5 - location
  location_15 - location
  location_8 - location
  location_2 - location
  location_7 - location
  location_11 - location
  location_4 - location
  location_16 - location
  location_0 - location
  location_3 - location
  location_13 - location
  location_12 - location
  location_10 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_3 - package
  package_2 - package
  package_4 - package
  package_1 - package
  package_5 - package
  package_0 - package
  package_6 - package
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  ; 748,385 -> 890,543
  (road location_14 location_17)
  ; 890,543 -> 748,385
  (road location_17 location_14)
  ; 912,799 -> 890,543
  (road location_6 location_17)
  ; 890,543 -> 912,799
  (road location_17 location_6)
  ; 977,899 -> 912,799
  (road location_9 location_6)
  ; 912,799 -> 977,899
  (road location_6 location_9)
  ; 456,221 -> 384,50
  (road location_5 location_1)
  ; 384,50 -> 456,221
  (road location_1 location_5)
  ; 742,542 -> 890,543
  (road location_15 location_17)
  ; 890,543 -> 742,542
  (road location_17 location_15)
  ; 742,542 -> 748,385
  (road location_15 location_14)
  ; 748,385 -> 742,542
  (road location_14 location_15)
  ; 742,542 -> 912,799
  (road location_15 location_6)
  ; 912,799 -> 742,542
  (road location_6 location_15)
  ; 564,783 -> 742,542
  (road location_8 location_15)
  ; 742,542 -> 564,783
  (road location_15 location_8)
  ; 273,425 -> 456,221
  (road location_2 location_5)
  ; 456,221 -> 273,425
  (road location_5 location_2)
  ; 566,552 -> 748,385
  (road location_7 location_14)
  ; 748,385 -> 566,552
  (road location_14 location_7)
  ; 566,552 -> 742,542
  (road location_7 location_15)
  ; 742,542 -> 566,552
  (road location_15 location_7)
  ; 566,552 -> 564,783
  (road location_7 location_8)
  ; 564,783 -> 566,552
  (road location_8 location_7)
  ; 566,552 -> 273,425
  (road location_7 location_2)
  ; 273,425 -> 566,552
  (road location_2 location_7)
  ; 174,643 -> 273,425
  (road location_11 location_2)
  ; 273,425 -> 174,643
  (road location_2 location_11)
  ; 930,259 -> 890,543
  (road location_4 location_17)
  ; 890,543 -> 930,259
  (road location_17 location_4)
  ; 930,259 -> 748,385
  (road location_4 location_14)
  ; 748,385 -> 930,259
  (road location_14 location_4)
  ; 55,605 -> 273,425
  (road location_16 location_2)
  ; 273,425 -> 55,605
  (road location_2 location_16)
  ; 55,605 -> 174,643
  (road location_16 location_11)
  ; 174,643 -> 55,605
  (road location_11 location_16)
  ; 803,858 -> 912,799
  (road location_0 location_6)
  ; 912,799 -> 803,858
  (road location_6 location_0)
  ; 803,858 -> 977,899
  (road location_0 location_9)
  ; 977,899 -> 803,858
  (road location_9 location_0)
  ; 803,858 -> 564,783
  (road location_0 location_8)
  ; 564,783 -> 803,858
  (road location_8 location_0)
  ; 263,567 -> 273,425
  (road location_3 location_2)
  ; 273,425 -> 263,567
  (road location_2 location_3)
  ; 263,567 -> 566,552
  (road location_3 location_7)
  ; 566,552 -> 263,567
  (road location_7 location_3)
  ; 263,567 -> 174,643
  (road location_3 location_11)
  ; 174,643 -> 263,567
  (road location_11 location_3)
  ; 263,567 -> 55,605
  (road location_3 location_16)
  ; 55,605 -> 263,567
  (road location_16 location_3)
  ; 128,791 -> 174,643
  (road location_13 location_11)
  ; 174,643 -> 128,791
  (road location_11 location_13)
  ; 128,791 -> 55,605
  (road location_13 location_16)
  ; 55,605 -> 128,791
  (road location_16 location_13)
  ; 128,791 -> 263,567
  (road location_13 location_3)
  ; 263,567 -> 128,791
  (road location_3 location_13)
  ; 426,706 -> 564,783
  (road location_12 location_8)
  ; 564,783 -> 426,706
  (road location_8 location_12)
  ; 426,706 -> 566,552
  (road location_12 location_7)
  ; 566,552 -> 426,706
  (road location_7 location_12)
  ; 426,706 -> 174,643
  (road location_12 location_11)
  ; 174,643 -> 426,706
  (road location_11 location_12)
  ; 426,706 -> 263,567
  (road location_12 location_3)
  ; 263,567 -> 426,706
  (road location_3 location_12)
  ; 426,706 -> 128,791
  (road location_12 location_13)
  ; 128,791 -> 426,706
  (road location_13 location_12)
  ; 36,368 -> 273,425
  (road location_10 location_2)
  ; 273,425 -> 36,368
  (road location_2 location_10)
  ; 36,368 -> 174,643
  (road location_10 location_11)
  ; 174,643 -> 36,368
  (road location_11 location_10)
  ; 36,368 -> 55,605
  (road location_10 location_16)
  ; 55,605 -> 36,368
  (road location_16 location_10)
  ; 36,368 -> 263,567
  (road location_10 location_3)
  ; 263,567 -> 36,368
  (road location_3 location_10)
  (at package_3 location_3)
  (at package_2 location_17)
  (at package_4 location_14)
  (at package_1 location_1)
  (at package_5 location_8)
  (at package_0 location_8)
  (at package_6 location_13)
  (at vehicle_0 location_9)
  (capacity vehicle_0 capacity-number_3)
  (at vehicle_2 location_5)
  (capacity vehicle_2 capacity-number_3)
  (at vehicle_1 location_17)
  (capacity vehicle_1 capacity-number_3)
 )
 (:goal (and
  (at package_3 location_5)
  (at package_2 location_16)
  (at package_4 location_17)
  (at package_1 location_10)
  (at package_5 location_2)
  (at package_0 location_1)
  (at package_6 location_0)
 ))
 
)
