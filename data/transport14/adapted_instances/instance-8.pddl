; transport two-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-two-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_2 - location
  location_19 - location
  location_10 - location
  location_15 - location
  location_18 - location
  location_14 - location
  location_6 - location
  location_1 - location
  location_4 - location
  location_9 - location
  location_17 - location
  location_0 - location
  location_5 - location
  location_12 - location
  location_13 - location
  location_7 - location
  location_11 - location
  location_16 - location
  location_8 - location
  location_3 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_1 - package
  package_3 - package
  package_0 - package
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  ; 387,219 -> 274,308
  (road location_6 location_18)
  ; 274,308 -> 387,219
  (road location_18 location_6)
  ; 358,437 -> 274,308
  (road location_4 location_18)
  ; 274,308 -> 358,437
  (road location_18 location_4)
  ; 358,437 -> 387,219
  (road location_4 location_6)
  ; 387,219 -> 358,437
  (road location_6 location_4)
  ; 220,489 -> 108,660
  (road location_17 location_2)
  ; 108,660 -> 220,489
  (road location_2 location_17)
  ; 220,489 -> 274,308
  (road location_17 location_18)
  ; 274,308 -> 220,489
  (road location_18 location_17)
  ; 220,489 -> 358,437
  (road location_17 location_4)
  ; 358,437 -> 220,489
  (road location_4 location_17)
  ; 504,478 -> 274,308
  (road location_5 location_18)
  ; 274,308 -> 504,478
  (road location_18 location_5)
  ; 504,478 -> 387,219
  (road location_5 location_6)
  ; 387,219 -> 504,478
  (road location_6 location_5)
  ; 504,478 -> 358,437
  (road location_5 location_4)
  ; 358,437 -> 504,478
  (road location_4 location_5)
  ; 504,478 -> 220,489
  (road location_5 location_17)
  ; 220,489 -> 504,478
  (road location_17 location_5)
  ; 532,77 -> 387,219
  (road location_13 location_6)
  ; 387,219 -> 532,77
  (road location_6 location_13)
  ; 395,718 -> 108,660
  (road location_11 location_2)
  ; 108,660 -> 395,718
  (road location_2 location_11)
  ; 395,718 -> 429,973
  (road location_11 location_10)
  ; 429,973 -> 395,718
  (road location_10 location_11)
  ; 395,718 -> 358,437
  (road location_11 location_4)
  ; 358,437 -> 395,718
  (road location_4 location_11)
  ; 395,718 -> 220,489
  (road location_11 location_17)
  ; 220,489 -> 395,718
  (road location_17 location_11)
  ; 395,718 -> 504,478
  (road location_11 location_5)
  ; 504,478 -> 395,718
  (road location_5 location_11)
  ; 609,959 -> 429,973
  (road location_8 location_10)
  ; 429,973 -> 609,959
  (road location_10 location_8)
  ; 2291,215 -> 2566,175
  (road location_14 location_19)
  ; 2566,175 -> 2291,215
  (road location_19 location_14)
  ; 2787,79 -> 2566,175
  (road location_1 location_19)
  ; 2566,175 -> 2787,79
  (road location_19 location_1)
  ; 2701,396 -> 2566,175
  (road location_9 location_19)
  ; 2566,175 -> 2701,396
  (road location_19 location_9)
  ; 2482,61 -> 2566,175
  (road location_0 location_19)
  ; 2566,175 -> 2482,61
  (road location_19 location_0)
  ; 2482,61 -> 2291,215
  (road location_0 location_14)
  ; 2291,215 -> 2482,61
  (road location_14 location_0)
  ; 2194,419 -> 2250,604
  (road location_12 location_15)
  ; 2250,604 -> 2194,419
  (road location_15 location_12)
  ; 2194,419 -> 2291,215
  (road location_12 location_14)
  ; 2291,215 -> 2194,419
  (road location_14 location_12)
  ; 2105,672 -> 2250,604
  (road location_7 location_15)
  ; 2250,604 -> 2105,672
  (road location_15 location_7)
  ; 2105,672 -> 2194,419
  (road location_7 location_12)
  ; 2194,419 -> 2105,672
  (road location_12 location_7)
  ; 2663,499 -> 2701,396
  (road location_16 location_9)
  ; 2701,396 -> 2663,499
  (road location_9 location_16)
  ; 2034,596 -> 2250,604
  (road location_3 location_15)
  ; 2250,604 -> 2034,596
  (road location_15 location_3)
  ; 2034,596 -> 2194,419
  (road location_3 location_12)
  ; 2194,419 -> 2034,596
  (road location_12 location_3)
  ; 2034,596 -> 2105,672
  (road location_3 location_7)
  ; 2105,672 -> 2034,596
  (road location_7 location_3)
  ; 609,959 <-> 2034,596
  (road location_8 location_3)
  (road location_3 location_8)
  (at package_2 location_8)
  (at package_1 location_11)
  (at package_3 location_5)
  (at package_0 location_18)
  (at vehicle_1 location_1)
  (capacity vehicle_1 capacity-number_3)
  (at vehicle_0 location_14)
  (capacity vehicle_0 capacity-number_3)
 )
 (:goal (and
  (at package_2 location_0)
  (at package_1 location_0)
  (at package_3 location_14)
  (at package_0 location_9)
 ))
 
)
