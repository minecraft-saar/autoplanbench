; transport three-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-three-cities-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_15 - location
  location_27 - location
  location_29 - location
  location_20 - location
  location_7 - location
  location_19 - location
  location_3 - location
  location_1 - location
  location_26 - location
  location_13 - location
  location_0 - location
  location_9 - location
  location_25 - location
  location_18 - location
  location_8 - location
  location_23 - location
  location_14 - location
  location_16 - location
  location_2 - location
  location_22 - location
  location_17 - location
  location_6 - location
  location_5 - location
  location_4 - location
  location_24 - location
  location_21 - location
  location_10 - location
  location_28 - location
  location_11 - location
  location_12 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_0 - package
  package_1 - package
  package_3 - package
  capacity-number_2 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  ; 387,219 -> 274,308
  (road location_13 location_3)
  ; 274,308 -> 387,219
  (road location_3 location_13)
  ; 358,437 -> 274,308
  (road location_25 location_3)
  ; 274,308 -> 358,437
  (road location_3 location_25)
  ; 358,437 -> 387,219
  (road location_25 location_13)
  ; 387,219 -> 358,437
  (road location_13 location_25)
  ; 220,489 -> 108,660
  (road location_23 location_15)
  ; 108,660 -> 220,489
  (road location_15 location_23)
  ; 220,489 -> 274,308
  (road location_23 location_3)
  ; 274,308 -> 220,489
  (road location_3 location_23)
  ; 220,489 -> 358,437
  (road location_23 location_25)
  ; 358,437 -> 220,489
  (road location_25 location_23)
  ; 504,478 -> 274,308
  (road location_2 location_3)
  ; 274,308 -> 504,478
  (road location_3 location_2)
  ; 504,478 -> 387,219
  (road location_2 location_13)
  ; 387,219 -> 504,478
  (road location_13 location_2)
  ; 504,478 -> 358,437
  (road location_2 location_25)
  ; 358,437 -> 504,478
  (road location_25 location_2)
  ; 504,478 -> 220,489
  (road location_2 location_23)
  ; 220,489 -> 504,478
  (road location_23 location_2)
  ; 532,77 -> 387,219
  (road location_6 location_13)
  ; 387,219 -> 532,77
  (road location_13 location_6)
  ; 395,718 -> 108,660
  (road location_24 location_15)
  ; 108,660 -> 395,718
  (road location_15 location_24)
  ; 395,718 -> 429,973
  (road location_24 location_20)
  ; 429,973 -> 395,718
  (road location_20 location_24)
  ; 395,718 -> 358,437
  (road location_24 location_25)
  ; 358,437 -> 395,718
  (road location_25 location_24)
  ; 395,718 -> 220,489
  (road location_24 location_23)
  ; 220,489 -> 395,718
  (road location_23 location_24)
  ; 395,718 -> 504,478
  (road location_24 location_2)
  ; 504,478 -> 395,718
  (road location_2 location_24)
  ; 609,959 -> 429,973
  (road location_28 location_20)
  ; 429,973 -> 609,959
  (road location_20 location_28)
  ; 2291,215 -> 2566,175
  (road location_1 location_27)
  ; 2566,175 -> 2291,215
  (road location_27 location_1)
  ; 2787,79 -> 2566,175
  (road location_0 location_27)
  ; 2566,175 -> 2787,79
  (road location_27 location_0)
  ; 2701,396 -> 2566,175
  (road location_18 location_27)
  ; 2566,175 -> 2701,396
  (road location_27 location_18)
  ; 2482,61 -> 2566,175
  (road location_14 location_27)
  ; 2566,175 -> 2482,61
  (road location_27 location_14)
  ; 2482,61 -> 2291,215
  (road location_14 location_1)
  ; 2291,215 -> 2482,61
  (road location_1 location_14)
  ; 2194,419 -> 2250,604
  (road location_22 location_7)
  ; 2250,604 -> 2194,419
  (road location_7 location_22)
  ; 2194,419 -> 2291,215
  (road location_22 location_1)
  ; 2291,215 -> 2194,419
  (road location_1 location_22)
  ; 2105,672 -> 2250,604
  (road location_5 location_7)
  ; 2250,604 -> 2105,672
  (road location_7 location_5)
  ; 2105,672 -> 2194,419
  (road location_5 location_22)
  ; 2194,419 -> 2105,672
  (road location_22 location_5)
  ; 2663,499 -> 2701,396
  (road location_21 location_18)
  ; 2701,396 -> 2663,499
  (road location_18 location_21)
  ; 2034,596 -> 2250,604
  (road location_11 location_7)
  ; 2250,604 -> 2034,596
  (road location_7 location_11)
  ; 2034,596 -> 2194,419
  (road location_11 location_22)
  ; 2194,419 -> 2034,596
  (road location_22 location_11)
  ; 2034,596 -> 2105,672
  (road location_11 location_5)
  ; 2105,672 -> 2034,596
  (road location_5 location_11)
  ; 1454,2969 -> 1665,2994
  (road location_26 location_29)
  ; 1665,2994 -> 1454,2969
  (road location_29 location_26)
  ; 1825,2489 -> 1704,2582
  (road location_8 location_19)
  ; 1704,2582 -> 1825,2489
  (road location_19 location_8)
  ; 1992,2559 -> 1704,2582
  (road location_16 location_19)
  ; 1704,2582 -> 1992,2559
  (road location_19 location_16)
  ; 1992,2559 -> 1825,2489
  (road location_16 location_8)
  ; 1825,2489 -> 1992,2559
  (road location_8 location_16)
  ; 1677,2826 -> 1665,2994
  (road location_17 location_29)
  ; 1665,2994 -> 1677,2826
  (road location_29 location_17)
  ; 1677,2826 -> 1704,2582
  (road location_17 location_19)
  ; 1704,2582 -> 1677,2826
  (road location_19 location_17)
  ; 1677,2826 -> 1454,2969
  (road location_17 location_26)
  ; 1454,2969 -> 1677,2826
  (road location_26 location_17)
  ; 1906,2406 -> 1704,2582
  (road location_4 location_19)
  ; 1704,2582 -> 1906,2406
  (road location_19 location_4)
  ; 1906,2406 -> 1825,2489
  (road location_4 location_8)
  ; 1825,2489 -> 1906,2406
  (road location_8 location_4)
  ; 1906,2406 -> 1992,2559
  (road location_4 location_16)
  ; 1992,2559 -> 1906,2406
  (road location_16 location_4)
  ; 1425,2577 -> 1704,2582
  (road location_10 location_19)
  ; 1704,2582 -> 1425,2577
  (road location_19 location_10)
  ; 1425,2577 -> 1488,2300
  (road location_10 location_9)
  ; 1488,2300 -> 1425,2577
  (road location_9 location_10)
  ; 1752,2324 -> 1704,2582
  (road location_12 location_19)
  ; 1704,2582 -> 1752,2324
  (road location_19 location_12)
  ; 1752,2324 -> 1488,2300
  (road location_12 location_9)
  ; 1488,2300 -> 1752,2324
  (road location_9 location_12)
  ; 1752,2324 -> 1825,2489
  (road location_12 location_8)
  ; 1825,2489 -> 1752,2324
  (road location_8 location_12)
  ; 1752,2324 -> 1906,2406
  (road location_12 location_4)
  ; 1906,2406 -> 1752,2324
  (road location_4 location_12)
  ; 609,959 <-> 2034,596
  (road location_28 location_11)
  (road location_11 location_28)
  (road location_28 location_17)
  (road location_17 location_28)
  (road location_5 location_12)
  (road location_12 location_5)
  (at package_2 location_1)
  (at package_0 location_11)
  (at package_1 location_19)
  (at package_3 location_22)
  (at vehicle_1 location_8)
  (capacity vehicle_1 capacity-number_1)
  (at vehicle_0 location_18)
  (capacity vehicle_0 capacity-number_4)
 )
 (:goal (and
  (at package_2 location_26)
  (at package_0 location_14)
  (at package_1 location_8)
  (at package_3 location_12)
 ))
 
)
