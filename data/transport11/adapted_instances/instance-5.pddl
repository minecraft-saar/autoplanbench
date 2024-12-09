; transport three-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-three-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-5packages-2008seed)
 (:domain transport)
 (:objects
  location_3 - location
  location_9 - location
  location_6 - location
  location_4 - location
  location_8 - location
  location_10 - location
  location_7 - location
  location_2 - location
  location_1 - location
  location_11 - location
  location_0 - location
  location_5 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_3 - package
  package_4 - package
  package_1 - package
  package_0 - package
  package_2 - package
  capacity-number_1 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_3)
  ; 742,542 -> 977,899
  (road location_7 location_3)
  ; 977,899 -> 742,542
  (road location_3 location_7)
  ; 742,542 -> 456,221
  (road location_7 location_4)
  ; 456,221 -> 742,542
  (road location_4 location_7)
  ; 564,783 -> 977,899
  (road location_11 location_3)
  ; 977,899 -> 564,783
  (road location_3 location_11)
  ; 564,783 -> 742,542
  (road location_11 location_7)
  ; 742,542 -> 564,783
  (road location_7 location_11)
  ; 2245,346 -> 2257,5
  (road location_8 location_9)
  ; 2257,5 -> 2245,346
  (road location_9 location_8)
  ; 2559,565 -> 2245,346
  (road location_2 location_8)
  ; 2245,346 -> 2559,565
  (road location_8 location_2)
  ; 2347,149 -> 2257,5
  (road location_0 location_9)
  ; 2257,5 -> 2347,149
  (road location_9 location_0)
  ; 2347,149 -> 2245,346
  (road location_0 location_8)
  ; 2245,346 -> 2347,149
  (road location_8 location_0)
  ; 2347,149 -> 2559,565
  (road location_0 location_2)
  ; 2559,565 -> 2347,149
  (road location_2 location_0)
  ; 1170,2709 -> 1336,2475
  (road location_10 location_6)
  ; 1336,2475 -> 1170,2709
  (road location_6 location_10)
  ; 1521,2375 -> 1336,2475
  (road location_1 location_6)
  ; 1336,2475 -> 1521,2375
  (road location_6 location_1)
  ; 1701,2000 -> 1521,2375
  (road location_5 location_1)
  ; 1521,2375 -> 1701,2000
  (road location_1 location_5)
  ; 977,899 <-> 2245,346
  (road location_3 location_8)
  (road location_8 location_3)
  (road location_11 location_5)
  (road location_5 location_11)
  (road location_9 location_6)
  (road location_6 location_9)
  (at package_3 location_3)
  (at package_4 location_6)
  (at package_1 location_8)
  (at package_0 location_7)
  (at package_2 location_2)
  (at vehicle_0 location_11)
  (capacity vehicle_0 capacity-number_4)
  (at vehicle_1 location_3)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_3 location_2)
  (at package_4 location_2)
  (at package_1 location_2)
  (at package_0 location_9)
  (at package_2 location_0)
 ))
 
)
