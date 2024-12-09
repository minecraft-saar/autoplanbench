; Transport three-cities-sequential-5nodes-1000size-4degree-100mindistance-3trucks-9packages-2012seed

(define (problem transport-three-cities-sequential-5nodes-1000size-4degree-100mindistance-3trucks-9packages-2012seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-3-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-3-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-3-loc-5 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  package-9 - package
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
  ; 642,589 -> 921,934
  (road city-1-loc-3 city-1-loc-1)
  ; 921,934 -> 642,589
  (road city-1-loc-1 city-1-loc-3)
  ; 642,589 -> 293,164
  (road city-1-loc-3 city-1-loc-2)
  ; 293,164 -> 642,589
  (road city-1-loc-2 city-1-loc-3)
  ; 567,304 -> 293,164
  (road city-1-loc-4 city-1-loc-2)
  ; 293,164 -> 567,304
  (road city-1-loc-2 city-1-loc-4)
  ; 567,304 -> 642,589
  (road city-1-loc-4 city-1-loc-3)
  ; 642,589 -> 567,304
  (road city-1-loc-3 city-1-loc-4)
  ; 363,292 -> 293,164
  (road city-1-loc-5 city-1-loc-2)
  ; 293,164 -> 363,292
  (road city-1-loc-2 city-1-loc-5)
  ; 363,292 -> 642,589
  (road city-1-loc-5 city-1-loc-3)
  ; 642,589 -> 363,292
  (road city-1-loc-3 city-1-loc-5)
  ; 363,292 -> 567,304
  (road city-1-loc-5 city-1-loc-4)
  ; 567,304 -> 363,292
  (road city-1-loc-4 city-1-loc-5)
  ; 2771,428 -> 2624,857
  (road city-2-loc-2 city-2-loc-1)
  ; 2624,857 -> 2771,428
  (road city-2-loc-1 city-2-loc-2)
  ; 2379,354 -> 2624,857
  (road city-2-loc-4 city-2-loc-1)
  ; 2624,857 -> 2379,354
  (road city-2-loc-1 city-2-loc-4)
  ; 2379,354 -> 2771,428
  (road city-2-loc-4 city-2-loc-2)
  ; 2771,428 -> 2379,354
  (road city-2-loc-2 city-2-loc-4)
  ; 2379,354 -> 2032,172
  (road city-2-loc-4 city-2-loc-3)
  ; 2032,172 -> 2379,354
  (road city-2-loc-3 city-2-loc-4)
  ; 2414,494 -> 2624,857
  (road city-2-loc-5 city-2-loc-1)
  ; 2624,857 -> 2414,494
  (road city-2-loc-1 city-2-loc-5)
  ; 2414,494 -> 2771,428
  (road city-2-loc-5 city-2-loc-2)
  ; 2771,428 -> 2414,494
  (road city-2-loc-2 city-2-loc-5)
  ; 2414,494 -> 2032,172
  (road city-2-loc-5 city-2-loc-3)
  ; 2032,172 -> 2414,494
  (road city-2-loc-3 city-2-loc-5)
  ; 2414,494 -> 2379,354
  (road city-2-loc-5 city-2-loc-4)
  ; 2379,354 -> 2414,494
  (road city-2-loc-4 city-2-loc-5)
  ; 1656,2139 -> 1972,2256
  (road city-3-loc-2 city-3-loc-1)
  ; 1972,2256 -> 1656,2139
  (road city-3-loc-1 city-3-loc-2)
  ; 1511,2323 -> 1972,2256
  (road city-3-loc-3 city-3-loc-1)
  ; 1972,2256 -> 1511,2323
  (road city-3-loc-1 city-3-loc-3)
  ; 1511,2323 -> 1656,2139
  (road city-3-loc-3 city-3-loc-2)
  ; 1656,2139 -> 1511,2323
  (road city-3-loc-2 city-3-loc-3)
  ; 1440,2147 -> 1972,2256
  (road city-3-loc-4 city-3-loc-1)
  ; 1972,2256 -> 1440,2147
  (road city-3-loc-1 city-3-loc-4)
  ; 1440,2147 -> 1656,2139
  (road city-3-loc-4 city-3-loc-2)
  ; 1656,2139 -> 1440,2147
  (road city-3-loc-2 city-3-loc-4)
  ; 1440,2147 -> 1511,2323
  (road city-3-loc-4 city-3-loc-3)
  ; 1511,2323 -> 1440,2147
  (road city-3-loc-3 city-3-loc-4)
  ; 1592,2411 -> 1972,2256
  (road city-3-loc-5 city-3-loc-1)
  ; 1972,2256 -> 1592,2411
  (road city-3-loc-1 city-3-loc-5)
  ; 1592,2411 -> 1656,2139
  (road city-3-loc-5 city-3-loc-2)
  ; 1656,2139 -> 1592,2411
  (road city-3-loc-2 city-3-loc-5)
  ; 1592,2411 -> 1511,2323
  (road city-3-loc-5 city-3-loc-3)
  ; 1511,2323 -> 1592,2411
  (road city-3-loc-3 city-3-loc-5)
  ; 1592,2411 -> 1440,2147
  (road city-3-loc-5 city-3-loc-4)
  ; 1440,2147 -> 1592,2411
  (road city-3-loc-4 city-3-loc-5)
  ; 921,934 <-> 2032,172
  (road city-1-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-1-loc-1)
  (road city-1-loc-1 city-3-loc-3)
  (road city-3-loc-3 city-1-loc-1)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (at package-1 city-3-loc-4)
  (at package-2 city-2-loc-5)
  (at package-3 city-3-loc-4)
  (at package-4 city-3-loc-2)
  (at package-5 city-1-loc-3)
  (at package-6 city-1-loc-3)
  (at package-7 city-1-loc-1)
  (at package-8 city-2-loc-2)
  (at package-9 city-3-loc-1)
  (at truck-1 city-2-loc-4)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-1)
  (capacity truck-2 capacity-3)
  (at truck-3 city-3-loc-4)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-3-loc-3)
  (at package-2 city-1-loc-4)
  (at package-3 city-2-loc-2)
  (at package-4 city-2-loc-2)
  (at package-5 city-2-loc-3)
  (at package-6 city-3-loc-4)
  (at package-7 city-1-loc-5)
  (at package-8 city-3-loc-4)
  (at package-9 city-1-loc-2)
 ))
 
)
