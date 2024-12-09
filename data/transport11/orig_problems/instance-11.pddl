; Transport two-cities-sequential-7nodes-1000size-4degree-100mindistance-2trucks-8packages-2012seed

(define (problem transport-two-cities-sequential-7nodes-1000size-4degree-100mindistance-2trucks-8packages-2012seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
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
  ; 567,304 -> 642,589
  (road city-1-loc-2 city-1-loc-1)
  ; 642,589 -> 567,304
  (road city-1-loc-1 city-1-loc-2)
  ; 363,292 -> 642,589
  (road city-1-loc-3 city-1-loc-1)
  ; 642,589 -> 363,292
  (road city-1-loc-1 city-1-loc-3)
  ; 363,292 -> 567,304
  (road city-1-loc-3 city-1-loc-2)
  ; 567,304 -> 363,292
  (road city-1-loc-2 city-1-loc-3)
  ; 624,857 -> 642,589
  (road city-1-loc-4 city-1-loc-1)
  ; 642,589 -> 624,857
  (road city-1-loc-1 city-1-loc-4)
  ; 771,428 -> 642,589
  (road city-1-loc-5 city-1-loc-1)
  ; 642,589 -> 771,428
  (road city-1-loc-1 city-1-loc-5)
  ; 771,428 -> 567,304
  (road city-1-loc-5 city-1-loc-2)
  ; 567,304 -> 771,428
  (road city-1-loc-2 city-1-loc-5)
  ; 771,428 -> 363,292
  (road city-1-loc-5 city-1-loc-3)
  ; 363,292 -> 771,428
  (road city-1-loc-3 city-1-loc-5)
  ; 771,428 -> 624,857
  (road city-1-loc-5 city-1-loc-4)
  ; 624,857 -> 771,428
  (road city-1-loc-4 city-1-loc-5)
  ; 32,172 -> 363,292
  (road city-1-loc-6 city-1-loc-3)
  ; 363,292 -> 32,172
  (road city-1-loc-3 city-1-loc-6)
  ; 414,494 -> 642,589
  (road city-1-loc-7 city-1-loc-1)
  ; 642,589 -> 414,494
  (road city-1-loc-1 city-1-loc-7)
  ; 414,494 -> 567,304
  (road city-1-loc-7 city-1-loc-2)
  ; 567,304 -> 414,494
  (road city-1-loc-2 city-1-loc-7)
  ; 414,494 -> 363,292
  (road city-1-loc-7 city-1-loc-3)
  ; 363,292 -> 414,494
  (road city-1-loc-3 city-1-loc-7)
  ; 414,494 -> 624,857
  (road city-1-loc-7 city-1-loc-4)
  ; 624,857 -> 414,494
  (road city-1-loc-4 city-1-loc-7)
  ; 414,494 -> 771,428
  (road city-1-loc-7 city-1-loc-5)
  ; 771,428 -> 414,494
  (road city-1-loc-5 city-1-loc-7)
  ; 414,494 -> 32,172
  (road city-1-loc-7 city-1-loc-6)
  ; 32,172 -> 414,494
  (road city-1-loc-6 city-1-loc-7)
  ; 2656,139 -> 2972,256
  (road city-2-loc-2 city-2-loc-1)
  ; 2972,256 -> 2656,139
  (road city-2-loc-1 city-2-loc-2)
  ; 2511,323 -> 2972,256
  (road city-2-loc-3 city-2-loc-1)
  ; 2972,256 -> 2511,323
  (road city-2-loc-1 city-2-loc-3)
  ; 2511,323 -> 2656,139
  (road city-2-loc-3 city-2-loc-2)
  ; 2656,139 -> 2511,323
  (road city-2-loc-2 city-2-loc-3)
  ; 2440,147 -> 2656,139
  (road city-2-loc-4 city-2-loc-2)
  ; 2656,139 -> 2440,147
  (road city-2-loc-2 city-2-loc-4)
  ; 2440,147 -> 2511,323
  (road city-2-loc-4 city-2-loc-3)
  ; 2511,323 -> 2440,147
  (road city-2-loc-3 city-2-loc-4)
  ; 2592,411 -> 2972,256
  (road city-2-loc-5 city-2-loc-1)
  ; 2972,256 -> 2592,411
  (road city-2-loc-1 city-2-loc-5)
  ; 2592,411 -> 2656,139
  (road city-2-loc-5 city-2-loc-2)
  ; 2656,139 -> 2592,411
  (road city-2-loc-2 city-2-loc-5)
  ; 2592,411 -> 2511,323
  (road city-2-loc-5 city-2-loc-3)
  ; 2511,323 -> 2592,411
  (road city-2-loc-3 city-2-loc-5)
  ; 2592,411 -> 2440,147
  (road city-2-loc-5 city-2-loc-4)
  ; 2440,147 -> 2592,411
  (road city-2-loc-4 city-2-loc-5)
  ; 2841,750 -> 2972,256
  (road city-2-loc-6 city-2-loc-1)
  ; 2972,256 -> 2841,750
  (road city-2-loc-1 city-2-loc-6)
  ; 2841,750 -> 2592,411
  (road city-2-loc-6 city-2-loc-5)
  ; 2592,411 -> 2841,750
  (road city-2-loc-5 city-2-loc-6)
  ; 2454,989 -> 2841,750
  (road city-2-loc-7 city-2-loc-6)
  ; 2841,750 -> 2454,989
  (road city-2-loc-6 city-2-loc-7)
  ; 771,428 <-> 2440,147
  (road city-1-loc-5 city-2-loc-4)
  (road city-2-loc-4 city-1-loc-5)
  (at package-1 city-1-loc-7)
  (at package-2 city-1-loc-5)
  (at package-3 city-1-loc-5)
  (at package-4 city-1-loc-2)
  (at package-5 city-1-loc-2)
  (at package-6 city-1-loc-4)
  (at package-7 city-1-loc-2)
  (at package-8 city-1-loc-4)
  (at truck-1 city-2-loc-1)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-4)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-6)
  (at package-2 city-2-loc-2)
  (at package-3 city-2-loc-4)
  (at package-4 city-2-loc-6)
  (at package-5 city-2-loc-5)
  (at package-6 city-2-loc-5)
  (at package-7 city-2-loc-1)
  (at package-8 city-2-loc-4)
 ))
 
)
