; Transport city-sequential-14nodes-1000size-3degree-100mindistance-3trucks-7packages-2012seed

(define (problem transport-city-sequential-14nodes-1000size-3degree-100mindistance-3trucks-7packages-2012seed)
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
  ; 644,247 -> 744,146
  (road city-loc-4 city-loc-3)
  ; 744,146 -> 644,247
  (road city-loc-3 city-loc-4)
  ; 20,617 -> 202,713
  (road city-loc-5 city-loc-2)
  ; 202,713 -> 20,617
  (road city-loc-2 city-loc-5)
  ; 170,927 -> 202,713
  (road city-loc-6 city-loc-2)
  ; 202,713 -> 170,927
  (road city-loc-2 city-loc-6)
  ; 488,182 -> 744,146
  (road city-loc-7 city-loc-3)
  ; 744,146 -> 488,182
  (road city-loc-3 city-loc-7)
  ; 488,182 -> 644,247
  (road city-loc-7 city-loc-4)
  ; 644,247 -> 488,182
  (road city-loc-4 city-loc-7)
  ; 277,44 -> 488,182
  (road city-loc-9 city-loc-7)
  ; 488,182 -> 277,44
  (road city-loc-7 city-loc-9)
  ; 277,44 -> 31,53
  (road city-loc-9 city-loc-8)
  ; 31,53 -> 277,44
  (road city-loc-8 city-loc-9)
  ; 761,729 -> 923,974
  (road city-loc-10 city-loc-1)
  ; 923,974 -> 761,729
  (road city-loc-1 city-loc-10)
  ; 629,961 -> 923,974
  (road city-loc-11 city-loc-1)
  ; 923,974 -> 629,961
  (road city-loc-1 city-loc-11)
  ; 629,961 -> 761,729
  (road city-loc-11 city-loc-10)
  ; 761,729 -> 629,961
  (road city-loc-10 city-loc-11)
  ; 464,733 -> 202,713
  (road city-loc-12 city-loc-2)
  ; 202,713 -> 464,733
  (road city-loc-2 city-loc-12)
  ; 464,733 -> 761,729
  (road city-loc-12 city-loc-10)
  ; 761,729 -> 464,733
  (road city-loc-10 city-loc-12)
  ; 464,733 -> 629,961
  (road city-loc-12 city-loc-11)
  ; 629,961 -> 464,733
  (road city-loc-11 city-loc-12)
  ; 620,481 -> 644,247
  (road city-loc-13 city-loc-4)
  ; 644,247 -> 620,481
  (road city-loc-4 city-loc-13)
  ; 620,481 -> 761,729
  (road city-loc-13 city-loc-10)
  ; 761,729 -> 620,481
  (road city-loc-10 city-loc-13)
  ; 620,481 -> 464,733
  (road city-loc-13 city-loc-12)
  ; 464,733 -> 620,481
  (road city-loc-12 city-loc-13)
  ; 723,396 -> 744,146
  (road city-loc-14 city-loc-3)
  ; 744,146 -> 723,396
  (road city-loc-3 city-loc-14)
  ; 723,396 -> 644,247
  (road city-loc-14 city-loc-4)
  ; 644,247 -> 723,396
  (road city-loc-4 city-loc-14)
  ; 723,396 -> 620,481
  (road city-loc-14 city-loc-13)
  ; 620,481 -> 723,396
  (road city-loc-13 city-loc-14)
  (at package-1 city-loc-13)
  (at package-2 city-loc-12)
  (at package-3 city-loc-4)
  (at package-4 city-loc-9)
  (at package-5 city-loc-4)
  (at package-6 city-loc-5)
  (at package-7 city-loc-8)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-11)
  (capacity truck-2 capacity-2)
  (at truck-3 city-loc-12)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-1)
  (at package-2 city-loc-9)
  (at package-3 city-loc-8)
  (at package-4 city-loc-5)
  (at package-5 city-loc-1)
  (at package-6 city-loc-4)
  (at package-7 city-loc-9)
 ))
 
)
