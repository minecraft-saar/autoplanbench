; transport three-cities-sequential-5nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed

(define (problem transport-three-cities-sequential-5nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed)
 (:domain transport)
 (:objects
  location_12 - location
  location_10 - location
  location_11 - location
  location_5 - location
  location_13 - location
  location_0 - location
  location_3 - location
  location_7 - location
  location_6 - location
  location_9 - location
  location_1 - location
  location_2 - location
  location_4 - location
  location_14 - location
  location_8 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_1 - package
  package_3 - package
  package_5 - package
  package_0 - package
  package_2 - package
  package_4 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  ; 748,385 -> 890,543
  (road location_3 location_12)
  ; 890,543 -> 748,385
  (road location_12 location_3)
  ; 748,385 -> 384,50
  (road location_3 location_5)
  ; 384,50 -> 748,385
  (road location_5 location_3)
  ; 912,799 -> 890,543
  (road location_9 location_12)
  ; 890,543 -> 912,799
  (road location_12 location_9)
  ; 912,799 -> 748,385
  (road location_9 location_3)
  ; 748,385 -> 912,799
  (road location_3 location_9)
  ; 977,899 -> 890,543
  (road location_4 location_12)
  ; 890,543 -> 977,899
  (road location_12 location_4)
  ; 977,899 -> 912,799
  (road location_4 location_9)
  ; 912,799 -> 977,899
  (road location_9 location_4)
  ; 2742,542 -> 2456,221
  (road location_13 location_10)
  ; 2456,221 -> 2742,542
  (road location_10 location_13)
  ; 2564,783 -> 2742,542
  (road location_7 location_13)
  ; 2742,542 -> 2564,783
  (road location_13 location_7)
  ; 2273,425 -> 2456,221
  (road location_1 location_10)
  ; 2456,221 -> 2273,425
  (road location_10 location_1)
  ; 2273,425 -> 2742,542
  (road location_1 location_13)
  ; 2742,542 -> 2273,425
  (road location_13 location_1)
  ; 2273,425 -> 2564,783
  (road location_1 location_7)
  ; 2564,783 -> 2273,425
  (road location_7 location_1)
  ; 2566,552 -> 2456,221
  (road location_14 location_10)
  ; 2456,221 -> 2566,552
  (road location_10 location_14)
  ; 2566,552 -> 2742,542
  (road location_14 location_13)
  ; 2742,542 -> 2566,552
  (road location_13 location_14)
  ; 2566,552 -> 2564,783
  (road location_14 location_7)
  ; 2564,783 -> 2566,552
  (road location_7 location_14)
  ; 2566,552 -> 2273,425
  (road location_14 location_1)
  ; 2273,425 -> 2566,552
  (road location_1 location_14)
  ; 1174,2643 -> 1616,2621
  (road location_0 location_11)
  ; 1616,2621 -> 1174,2643
  (road location_11 location_0)
  ; 1946,2916 -> 1616,2621
  (road location_6 location_11)
  ; 1616,2621 -> 1946,2916
  (road location_11 location_6)
  ; 1930,2259 -> 1616,2621
  (road location_2 location_11)
  ; 1616,2621 -> 1930,2259
  (road location_11 location_2)
  ; 1055,2605 -> 1174,2643
  (road location_8 location_0)
  ; 1174,2643 -> 1055,2605
  (road location_0 location_8)
  ; 977,899 <-> 2273,425
  (road location_4 location_1)
  (road location_1 location_4)
  (road location_4 location_2)
  (road location_2 location_4)
  (road location_10 location_11)
  (road location_11 location_10)
  (at package_1 location_8)
  (at package_3 location_3)
  (at package_5 location_9)
  (at package_0 location_1)
  (at package_2 location_5)
  (at package_4 location_11)
  (at vehicle_1 location_12)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_0 location_14)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_1 location_4)
  (at package_3 location_4)
  (at package_5 location_5)
  (at package_0 location_11)
  (at package_2 location_6)
  (at package_4 location_9)
 ))
 
)
