; transport two-cities-sequential-8nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-two-cities-sequential-8nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed)
 (:domain transport)
 (:objects
  location_7 - location
  location_1 - location
  location_3 - location
  location_2 - location
  location_5 - location
  location_9 - location
  location_4 - location
  location_15 - location
  location_14 - location
  location_6 - location
  location_0 - location
  location_11 - location
  location_13 - location
  location_8 - location
  location_10 - location
  location_12 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_1 - package
  package_3 - package
  package_4 - package
  package_0 - package
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  ; 748,385 -> 890,543
  (road location_5 location_7)
  ; 890,543 -> 748,385
  (road location_7 location_5)
  ; 912,799 -> 890,543
  (road location_4 location_7)
  ; 890,543 -> 912,799
  (road location_7 location_4)
  ; 977,899 -> 890,543
  (road location_14 location_7)
  ; 890,543 -> 977,899
  (road location_7 location_14)
  ; 977,899 -> 912,799
  (road location_14 location_4)
  ; 912,799 -> 977,899
  (road location_4 location_14)
  ; 456,221 -> 384,50
  (road location_0 location_3)
  ; 384,50 -> 456,221
  (road location_3 location_0)
  ; 456,221 -> 748,385
  (road location_0 location_5)
  ; 748,385 -> 456,221
  (road location_5 location_0)
  ; 742,542 -> 890,543
  (road location_13 location_7)
  ; 890,543 -> 742,542
  (road location_7 location_13)
  ; 742,542 -> 748,385
  (road location_13 location_5)
  ; 748,385 -> 742,542
  (road location_5 location_13)
  ; 742,542 -> 912,799
  (road location_13 location_4)
  ; 912,799 -> 742,542
  (road location_4 location_13)
  ; 564,783 -> 890,543
  (road location_10 location_7)
  ; 890,543 -> 564,783
  (road location_7 location_10)
  ; 564,783 -> 912,799
  (road location_10 location_4)
  ; 912,799 -> 564,783
  (road location_4 location_10)
  ; 564,783 -> 742,542
  (road location_10 location_13)
  ; 742,542 -> 564,783
  (road location_13 location_10)
  ; 2748,863 -> 2362,862
  (road location_2 location_1)
  ; 2362,862 -> 2748,863
  (road location_1 location_2)
  ; 2659,497 -> 2748,863
  (road location_15 location_2)
  ; 2748,863 -> 2659,497
  (road location_2 location_15)
  ; 2257,5 -> 2006,60
  (road location_6 location_9)
  ; 2006,60 -> 2257,5
  (road location_9 location_6)
  ; 2245,346 -> 2006,60
  (road location_11 location_9)
  ; 2006,60 -> 2245,346
  (road location_9 location_11)
  ; 2245,346 -> 2257,5
  (road location_11 location_6)
  ; 2257,5 -> 2245,346
  (road location_6 location_11)
  ; 2559,565 -> 2362,862
  (road location_8 location_1)
  ; 2362,862 -> 2559,565
  (road location_1 location_8)
  ; 2559,565 -> 2748,863
  (road location_8 location_2)
  ; 2748,863 -> 2559,565
  (road location_2 location_8)
  ; 2559,565 -> 2659,497
  (road location_8 location_15)
  ; 2659,497 -> 2559,565
  (road location_15 location_8)
  ; 2559,565 -> 2245,346
  (road location_8 location_11)
  ; 2245,346 -> 2559,565
  (road location_11 location_8)
  ; 2347,149 -> 2006,60
  (road location_12 location_9)
  ; 2006,60 -> 2347,149
  (road location_9 location_12)
  ; 2347,149 -> 2257,5
  (road location_12 location_6)
  ; 2257,5 -> 2347,149
  (road location_6 location_12)
  ; 2347,149 -> 2245,346
  (road location_12 location_11)
  ; 2245,346 -> 2347,149
  (road location_11 location_12)
  ; 890,543 <-> 2006,60
  (road location_7 location_9)
  (road location_9 location_7)
  (at package_2 location_5)
  (at package_1 location_4)
  (at package_3 location_3)
  (at package_4 location_0)
  (at package_0 location_7)
  (at vehicle_1 location_11)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_15)
  (capacity vehicle_0 capacity-number_3)
 )
 (:goal (and
  (at package_2 location_1)
  (at package_1 location_9)
  (at package_3 location_2)
  (at package_4 location_11)
  (at package_0 location_2)
 ))
 
)
