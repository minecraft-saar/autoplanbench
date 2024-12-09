; Transport two-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-two-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
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
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
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
  ; 387,219 -> 274,308
  (road city-1-loc-4 city-1-loc-3)
  ; 274,308 -> 387,219
  (road city-1-loc-3 city-1-loc-4)
  ; 358,437 -> 274,308
  (road city-1-loc-5 city-1-loc-3)
  ; 274,308 -> 358,437
  (road city-1-loc-3 city-1-loc-5)
  ; 358,437 -> 387,219
  (road city-1-loc-5 city-1-loc-4)
  ; 387,219 -> 358,437
  (road city-1-loc-4 city-1-loc-5)
  ; 220,489 -> 108,660
  (road city-1-loc-6 city-1-loc-1)
  ; 108,660 -> 220,489
  (road city-1-loc-1 city-1-loc-6)
  ; 220,489 -> 274,308
  (road city-1-loc-6 city-1-loc-3)
  ; 274,308 -> 220,489
  (road city-1-loc-3 city-1-loc-6)
  ; 220,489 -> 358,437
  (road city-1-loc-6 city-1-loc-5)
  ; 358,437 -> 220,489
  (road city-1-loc-5 city-1-loc-6)
  ; 504,478 -> 274,308
  (road city-1-loc-7 city-1-loc-3)
  ; 274,308 -> 504,478
  (road city-1-loc-3 city-1-loc-7)
  ; 504,478 -> 387,219
  (road city-1-loc-7 city-1-loc-4)
  ; 387,219 -> 504,478
  (road city-1-loc-4 city-1-loc-7)
  ; 504,478 -> 358,437
  (road city-1-loc-7 city-1-loc-5)
  ; 358,437 -> 504,478
  (road city-1-loc-5 city-1-loc-7)
  ; 504,478 -> 220,489
  (road city-1-loc-7 city-1-loc-6)
  ; 220,489 -> 504,478
  (road city-1-loc-6 city-1-loc-7)
  ; 532,77 -> 387,219
  (road city-1-loc-8 city-1-loc-4)
  ; 387,219 -> 532,77
  (road city-1-loc-4 city-1-loc-8)
  ; 395,718 -> 108,660
  (road city-1-loc-9 city-1-loc-1)
  ; 108,660 -> 395,718
  (road city-1-loc-1 city-1-loc-9)
  ; 395,718 -> 429,973
  (road city-1-loc-9 city-1-loc-2)
  ; 429,973 -> 395,718
  (road city-1-loc-2 city-1-loc-9)
  ; 395,718 -> 358,437
  (road city-1-loc-9 city-1-loc-5)
  ; 358,437 -> 395,718
  (road city-1-loc-5 city-1-loc-9)
  ; 395,718 -> 220,489
  (road city-1-loc-9 city-1-loc-6)
  ; 220,489 -> 395,718
  (road city-1-loc-6 city-1-loc-9)
  ; 395,718 -> 504,478
  (road city-1-loc-9 city-1-loc-7)
  ; 504,478 -> 395,718
  (road city-1-loc-7 city-1-loc-9)
  ; 609,959 -> 429,973
  (road city-1-loc-10 city-1-loc-2)
  ; 429,973 -> 609,959
  (road city-1-loc-2 city-1-loc-10)
  ; 2291,215 -> 2566,175
  (road city-2-loc-3 city-2-loc-1)
  ; 2566,175 -> 2291,215
  (road city-2-loc-1 city-2-loc-3)
  ; 2787,79 -> 2566,175
  (road city-2-loc-4 city-2-loc-1)
  ; 2566,175 -> 2787,79
  (road city-2-loc-1 city-2-loc-4)
  ; 2701,396 -> 2566,175
  (road city-2-loc-5 city-2-loc-1)
  ; 2566,175 -> 2701,396
  (road city-2-loc-1 city-2-loc-5)
  ; 2482,61 -> 2566,175
  (road city-2-loc-6 city-2-loc-1)
  ; 2566,175 -> 2482,61
  (road city-2-loc-1 city-2-loc-6)
  ; 2482,61 -> 2291,215
  (road city-2-loc-6 city-2-loc-3)
  ; 2291,215 -> 2482,61
  (road city-2-loc-3 city-2-loc-6)
  ; 2194,419 -> 2250,604
  (road city-2-loc-7 city-2-loc-2)
  ; 2250,604 -> 2194,419
  (road city-2-loc-2 city-2-loc-7)
  ; 2194,419 -> 2291,215
  (road city-2-loc-7 city-2-loc-3)
  ; 2291,215 -> 2194,419
  (road city-2-loc-3 city-2-loc-7)
  ; 2105,672 -> 2250,604
  (road city-2-loc-8 city-2-loc-2)
  ; 2250,604 -> 2105,672
  (road city-2-loc-2 city-2-loc-8)
  ; 2105,672 -> 2194,419
  (road city-2-loc-8 city-2-loc-7)
  ; 2194,419 -> 2105,672
  (road city-2-loc-7 city-2-loc-8)
  ; 2663,499 -> 2701,396
  (road city-2-loc-9 city-2-loc-5)
  ; 2701,396 -> 2663,499
  (road city-2-loc-5 city-2-loc-9)
  ; 2034,596 -> 2250,604
  (road city-2-loc-10 city-2-loc-2)
  ; 2250,604 -> 2034,596
  (road city-2-loc-2 city-2-loc-10)
  ; 2034,596 -> 2194,419
  (road city-2-loc-10 city-2-loc-7)
  ; 2194,419 -> 2034,596
  (road city-2-loc-7 city-2-loc-10)
  ; 2034,596 -> 2105,672
  (road city-2-loc-10 city-2-loc-8)
  ; 2105,672 -> 2034,596
  (road city-2-loc-8 city-2-loc-10)
  ; 609,959 <-> 2034,596
  (road city-1-loc-10 city-2-loc-10)
  (road city-2-loc-10 city-1-loc-10)
  (at package-1 city-1-loc-10)
  (at package-2 city-1-loc-9)
  (at package-3 city-1-loc-7)
  (at package-4 city-1-loc-3)
  (at truck-1 city-2-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-6)
  (at package-2 city-2-loc-6)
  (at package-3 city-2-loc-3)
  (at package-4 city-2-loc-5)
 ))
 
)
