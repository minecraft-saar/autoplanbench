; transport city-sequential-15nodes-1000size-3degree-100mindistance-3trucks-8packages-2012seed

(define (problem transport-city-sequential-15nodes-1000size-3degree-100mindistance-3trucks-8packages-2012seed)
 (:domain transport)
 (:objects
  location_8 - location
  location_12 - location
  location_6 - location
  location_9 - location
  location_5 - location
  location_0 - location
  location_4 - location
  location_11 - location
  location_10 - location
  location_3 - location
  location_7 - location
  location_2 - location
  location_13 - location
  location_14 - location
  location_1 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_7 - package
  package_6 - package
  package_4 - package
  package_5 - package
  package_0 - package
  package_2 - package
  package_1 - package
  package_3 - package
  capacity-number_3 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  ; 291,375 -> 204,611
  (road location_9 location_6)
  ; 204,611 -> 291,375
  (road location_6 location_9)
  ; 474,720 -> 369,896
  (road location_5 location_8)
  ; 369,896 -> 474,720
  (road location_8 location_5)
  ; 474,720 -> 204,611
  (road location_5 location_6)
  ; 204,611 -> 474,720
  (road location_6 location_5)
  ; 492,14 -> 554,126
  (road location_0 location_12)
  ; 554,126 -> 492,14
  (road location_12 location_0)
  ; 698,237 -> 554,126
  (road location_10 location_12)
  ; 554,126 -> 698,237
  (road location_12 location_10)
  ; 417,175 -> 554,126
  (road location_3 location_12)
  ; 554,126 -> 417,175
  (road location_12 location_3)
  ; 417,175 -> 291,375
  (road location_3 location_9)
  ; 291,375 -> 417,175
  (road location_9 location_3)
  ; 417,175 -> 492,14
  (road location_3 location_0)
  ; 492,14 -> 417,175
  (road location_0 location_3)
  ; 417,175 -> 698,237
  (road location_3 location_10)
  ; 698,237 -> 417,175
  (road location_10 location_3)
  ; 456,555 -> 204,611
  (road location_7 location_6)
  ; 204,611 -> 456,555
  (road location_6 location_7)
  ; 456,555 -> 291,375
  (road location_7 location_9)
  ; 291,375 -> 456,555
  (road location_9 location_7)
  ; 456,555 -> 474,720
  (road location_7 location_5)
  ; 474,720 -> 456,555
  (road location_5 location_7)
  ; 731,728 -> 474,720
  (road location_2 location_5)
  ; 474,720 -> 731,728
  (road location_5 location_2)
  ; 731,728 -> 713,982
  (road location_2 location_4)
  ; 713,982 -> 731,728
  (road location_4 location_2)
  ; 731,728 -> 927,508
  (road location_2 location_11)
  ; 927,508 -> 731,728
  (road location_11 location_2)
  ; 334,637 -> 369,896
  (road location_13 location_8)
  ; 369,896 -> 334,637
  (road location_8 location_13)
  ; 334,637 -> 204,611
  (road location_13 location_6)
  ; 204,611 -> 334,637
  (road location_6 location_13)
  ; 334,637 -> 291,375
  (road location_13 location_9)
  ; 291,375 -> 334,637
  (road location_9 location_13)
  ; 334,637 -> 474,720
  (road location_13 location_5)
  ; 474,720 -> 334,637
  (road location_5 location_13)
  ; 334,637 -> 456,555
  (road location_13 location_7)
  ; 456,555 -> 334,637
  (road location_7 location_13)
  ; 334,68 -> 554,126
  (road location_14 location_12)
  ; 554,126 -> 334,68
  (road location_12 location_14)
  ; 334,68 -> 492,14
  (road location_14 location_0)
  ; 492,14 -> 334,68
  (road location_0 location_14)
  ; 334,68 -> 417,175
  (road location_14 location_3)
  ; 417,175 -> 334,68
  (road location_3 location_14)
  ; 265,879 -> 369,896
  (road location_1 location_8)
  ; 369,896 -> 265,879
  (road location_8 location_1)
  ; 265,879 -> 204,611
  (road location_1 location_6)
  ; 204,611 -> 265,879
  (road location_6 location_1)
  ; 265,879 -> 474,720
  (road location_1 location_5)
  ; 474,720 -> 265,879
  (road location_5 location_1)
  ; 265,879 -> 334,637
  (road location_1 location_13)
  ; 334,637 -> 265,879
  (road location_13 location_1)
  (at package_7 location_0)
  (at package_6 location_7)
  (at package_4 location_6)
  (at package_5 location_13)
  (at package_0 location_2)
  (at package_2 location_1)
  (at package_1 location_3)
  (at package_3 location_12)
  (at vehicle_0 location_13)
  (capacity vehicle_0 capacity-number_0)
  (at vehicle_2 location_12)
  (capacity vehicle_2 capacity-number_2)
  (at vehicle_1 location_14)
  (capacity vehicle_1 capacity-number_0)
 )
 (:goal (and
  (at package_7 location_9)
  (at package_6 location_0)
  (at package_4 location_2)
  (at package_5 location_11)
  (at package_0 location_3)
  (at package_2 location_3)
  (at package_1 location_10)
  (at package_3 location_1)
 ))
 
)
