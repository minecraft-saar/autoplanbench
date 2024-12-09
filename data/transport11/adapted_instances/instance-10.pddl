; transport city-sequential-14nodes-1000size-3degree-100mindistance-3trucks-7packages-2012seed

(define (problem transport-city-sequential-14nodes-1000size-3degree-100mindistance-3trucks-7packages-2012seed)
 (:domain transport)
 (:objects
  location_2 - location
  location_10 - location
  location_3 - location
  location_9 - location
  location_8 - location
  location_5 - location
  location_6 - location
  location_0 - location
  location_12 - location
  location_11 - location
  location_4 - location
  location_13 - location
  location_1 - location
  location_7 - location
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_4 - package
  package_5 - package
  package_1 - package
  package_0 - package
  package_2 - package
  package_3 - package
  package_6 - package
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
  ; 644,247 -> 744,146
  (road location_9 location_3)
  ; 744,146 -> 644,247
  (road location_3 location_9)
  ; 20,617 -> 202,713
  (road location_8 location_10)
  ; 202,713 -> 20,617
  (road location_10 location_8)
  ; 170,927 -> 202,713
  (road location_5 location_10)
  ; 202,713 -> 170,927
  (road location_10 location_5)
  ; 488,182 -> 744,146
  (road location_6 location_3)
  ; 744,146 -> 488,182
  (road location_3 location_6)
  ; 488,182 -> 644,247
  (road location_6 location_9)
  ; 644,247 -> 488,182
  (road location_9 location_6)
  ; 277,44 -> 488,182
  (road location_12 location_6)
  ; 488,182 -> 277,44
  (road location_6 location_12)
  ; 277,44 -> 31,53
  (road location_12 location_0)
  ; 31,53 -> 277,44
  (road location_0 location_12)
  ; 761,729 -> 923,974
  (road location_11 location_2)
  ; 923,974 -> 761,729
  (road location_2 location_11)
  ; 629,961 -> 923,974
  (road location_4 location_2)
  ; 923,974 -> 629,961
  (road location_2 location_4)
  ; 629,961 -> 761,729
  (road location_4 location_11)
  ; 761,729 -> 629,961
  (road location_11 location_4)
  ; 464,733 -> 202,713
  (road location_13 location_10)
  ; 202,713 -> 464,733
  (road location_10 location_13)
  ; 464,733 -> 761,729
  (road location_13 location_11)
  ; 761,729 -> 464,733
  (road location_11 location_13)
  ; 464,733 -> 629,961
  (road location_13 location_4)
  ; 629,961 -> 464,733
  (road location_4 location_13)
  ; 620,481 -> 644,247
  (road location_1 location_9)
  ; 644,247 -> 620,481
  (road location_9 location_1)
  ; 620,481 -> 761,729
  (road location_1 location_11)
  ; 761,729 -> 620,481
  (road location_11 location_1)
  ; 620,481 -> 464,733
  (road location_1 location_13)
  ; 464,733 -> 620,481
  (road location_13 location_1)
  ; 723,396 -> 744,146
  (road location_7 location_3)
  ; 744,146 -> 723,396
  (road location_3 location_7)
  ; 723,396 -> 644,247
  (road location_7 location_9)
  ; 644,247 -> 723,396
  (road location_9 location_7)
  ; 723,396 -> 620,481
  (road location_7 location_1)
  ; 620,481 -> 723,396
  (road location_1 location_7)
  (at package_4 location_1)
  (at package_5 location_13)
  (at package_1 location_9)
  (at package_0 location_12)
  (at package_2 location_9)
  (at package_3 location_8)
  (at package_6 location_0)
  (at vehicle_2 location_9)
  (capacity vehicle_2 capacity-number_3)
  (at vehicle_1 location_4)
  (capacity vehicle_1 capacity-number_3)
  (at vehicle_0 location_13)
  (capacity vehicle_0 capacity-number_2)
 )
 (:goal (and
  (at package_4 location_2)
  (at package_5 location_12)
  (at package_1 location_0)
  (at package_0 location_8)
  (at package_2 location_2)
  (at package_3 location_9)
  (at package_6 location_12)
 ))
 
)
