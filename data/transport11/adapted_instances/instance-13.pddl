; transport city-sequential-15nodes-1000size-2degree-100mindistance-2trucks-8packages-2012seed

(define (problem transport-city-sequential-15nodes-1000size-2degree-100mindistance-2trucks-8packages-2012seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_1 - location
  location_3 - location
  location_9 - location
  location_8 - location
  location_4 - location
  location_0 - location
  location_6 - location
  location_2 - location
  location_7 - location
  location_14 - location
  location_5 - location
  location_13 - location
  location_10 - location
  location_12 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_0 - package
  package_1 - package
  package_6 - package
  package_3 - package
  package_2 - package
  package_4 - package
  package_5 - package
  package_7 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  ; 503,220 -> 341,398
  (road location_9 location_1)
  ; 341,398 -> 503,220
  (road location_1 location_9)
  ; 836,214 -> 711,364
  (road location_8 location_11)
  ; 711,364 -> 836,214
  (road location_11 location_8)
  ; 560,683 -> 750,807
  (road location_4 location_3)
  ; 750,807 -> 560,683
  (road location_3 location_4)
  ; 583,853 -> 750,807
  (road location_0 location_3)
  ; 750,807 -> 583,853
  (road location_3 location_0)
  ; 583,853 -> 560,683
  (road location_0 location_4)
  ; 560,683 -> 583,853
  (road location_4 location_0)
  ; 427,935 -> 583,853
  (road location_6 location_0)
  ; 583,853 -> 427,935
  (road location_0 location_6)
  ; 148,345 -> 341,398
  (road location_2 location_1)
  ; 341,398 -> 148,345
  (road location_1 location_2)
  ; 233,889 -> 427,935
  (road location_7 location_6)
  ; 427,935 -> 233,889
  (road location_6 location_7)
  ; 972,753 -> 750,807
  (road location_14 location_3)
  ; 750,807 -> 972,753
  (road location_3 location_14)
  ; 644,608 -> 750,807
  (road location_5 location_3)
  ; 750,807 -> 644,608
  (road location_3 location_5)
  ; 644,608 -> 560,683
  (road location_5 location_4)
  ; 560,683 -> 644,608
  (road location_4 location_5)
  ; 621,407 -> 711,364
  (road location_13 location_11)
  ; 711,364 -> 621,407
  (road location_11 location_13)
  ; 621,407 -> 503,220
  (road location_13 location_9)
  ; 503,220 -> 621,407
  (road location_9 location_13)
  ; 621,407 -> 644,608
  (road location_13 location_5)
  ; 644,608 -> 621,407
  (road location_5 location_13)
  ; 362,690 -> 560,683
  (road location_10 location_4)
  ; 560,683 -> 362,690
  (road location_4 location_10)
  ; 362,690 -> 233,889
  (road location_10 location_7)
  ; 233,889 -> 362,690
  (road location_7 location_10)
  ; 870,968 -> 750,807
  (road location_12 location_3)
  ; 750,807 -> 870,968
  (road location_3 location_12)
  ; 870,968 -> 972,753
  (road location_12 location_14)
  ; 972,753 -> 870,968
  (road location_14 location_12)
  (at package_0 location_1)
  (at package_1 location_10)
  (at package_6 location_11)
  (at package_3 location_8)
  (at package_2 location_6)
  (at package_4 location_9)
  (at package_5 location_6)
  (at package_7 location_1)
  (at vehicle_1 location_4)
  (capacity vehicle_1 capacity-number_1)
  (at vehicle_0 location_4)
  (capacity vehicle_0 capacity-number_4)
 )
 (:goal (and
  (at package_0 location_5)
  (at package_1 location_0)
  (at package_6 location_14)
  (at package_3 location_10)
  (at package_2 location_3)
  (at package_4 location_5)
  (at package_5 location_13)
  (at package_7 location_10)
 ))
 
)
