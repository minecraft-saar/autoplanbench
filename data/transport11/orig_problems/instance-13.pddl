; Transport city-sequential-15nodes-1000size-2degree-100mindistance-2trucks-8packages-2012seed

(define (problem transport-city-sequential-15nodes-1000size-2degree-100mindistance-2trucks-8packages-2012seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 503,220 -> 341,398
  (road city-loc-4 city-loc-2)
  ; 341,398 -> 503,220
  (road city-loc-2 city-loc-4)
  ; 836,214 -> 711,364
  (road city-loc-5 city-loc-1)
  ; 711,364 -> 836,214
  (road city-loc-1 city-loc-5)
  ; 560,683 -> 750,807
  (road city-loc-6 city-loc-3)
  ; 750,807 -> 560,683
  (road city-loc-3 city-loc-6)
  ; 583,853 -> 750,807
  (road city-loc-7 city-loc-3)
  ; 750,807 -> 583,853
  (road city-loc-3 city-loc-7)
  ; 583,853 -> 560,683
  (road city-loc-7 city-loc-6)
  ; 560,683 -> 583,853
  (road city-loc-6 city-loc-7)
  ; 427,935 -> 583,853
  (road city-loc-8 city-loc-7)
  ; 583,853 -> 427,935
  (road city-loc-7 city-loc-8)
  ; 148,345 -> 341,398
  (road city-loc-9 city-loc-2)
  ; 341,398 -> 148,345
  (road city-loc-2 city-loc-9)
  ; 233,889 -> 427,935
  (road city-loc-10 city-loc-8)
  ; 427,935 -> 233,889
  (road city-loc-8 city-loc-10)
  ; 972,753 -> 750,807
  (road city-loc-11 city-loc-3)
  ; 750,807 -> 972,753
  (road city-loc-3 city-loc-11)
  ; 644,608 -> 750,807
  (road city-loc-12 city-loc-3)
  ; 750,807 -> 644,608
  (road city-loc-3 city-loc-12)
  ; 644,608 -> 560,683
  (road city-loc-12 city-loc-6)
  ; 560,683 -> 644,608
  (road city-loc-6 city-loc-12)
  ; 621,407 -> 711,364
  (road city-loc-13 city-loc-1)
  ; 711,364 -> 621,407
  (road city-loc-1 city-loc-13)
  ; 621,407 -> 503,220
  (road city-loc-13 city-loc-4)
  ; 503,220 -> 621,407
  (road city-loc-4 city-loc-13)
  ; 621,407 -> 644,608
  (road city-loc-13 city-loc-12)
  ; 644,608 -> 621,407
  (road city-loc-12 city-loc-13)
  ; 362,690 -> 560,683
  (road city-loc-14 city-loc-6)
  ; 560,683 -> 362,690
  (road city-loc-6 city-loc-14)
  ; 362,690 -> 233,889
  (road city-loc-14 city-loc-10)
  ; 233,889 -> 362,690
  (road city-loc-10 city-loc-14)
  ; 870,968 -> 750,807
  (road city-loc-15 city-loc-3)
  ; 750,807 -> 870,968
  (road city-loc-3 city-loc-15)
  ; 870,968 -> 972,753
  (road city-loc-15 city-loc-11)
  ; 972,753 -> 870,968
  (road city-loc-11 city-loc-15)
  (at package-1 city-loc-2)
  (at package-2 city-loc-14)
  (at package-3 city-loc-1)
  (at package-4 city-loc-5)
  (at package-5 city-loc-8)
  (at package-6 city-loc-4)
  (at package-7 city-loc-8)
  (at package-8 city-loc-2)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-12)
  (at package-2 city-loc-7)
  (at package-3 city-loc-11)
  (at package-4 city-loc-14)
  (at package-5 city-loc-3)
  (at package-6 city-loc-12)
  (at package-7 city-loc-13)
  (at package-8 city-loc-14)
 ))
 
)
