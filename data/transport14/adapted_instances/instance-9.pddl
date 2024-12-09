; transport two-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed

(define (problem transport-two-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_20 - location
  location_18 - location
  location_22 - location
  location_14 - location
  location_13 - location
  location_8 - location
  location_4 - location
  location_3 - location
  location_16 - location
  location_10 - location
  location_11 - location
  location_15 - location
  location_1 - location
  location_9 - location
  location_21 - location
  location_5 - location
  location_23 - location
  location_7 - location
  location_0 - location
  location_2 - location
  location_17 - location
  location_19 - location
  location_12 - location
  location_6 - location
  vehicle_0 - vehicle
  vehicle_1 - vehicle
  package_4 - package
  package_1 - package
  package_2 - package
  package_0 - package
  package_3 - package
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  ; 427,691 -> 315,398
  (road location_13 location_20)
  ; 315,398 -> 427,691
  (road location_20 location_13)
  ; 22,400 -> 315,398
  (road location_4 location_20)
  ; 315,398 -> 22,400
  (road location_20 location_4)
  ; 125,677 -> 315,398
  (road location_16 location_20)
  ; 315,398 -> 125,677
  (road location_20 location_16)
  ; 125,677 -> 427,691
  (road location_16 location_13)
  ; 427,691 -> 125,677
  (road location_13 location_16)
  ; 125,677 -> 22,400
  (road location_16 location_4)
  ; 22,400 -> 125,677
  (road location_4 location_16)
  ; 471,258 -> 315,398
  (road location_1 location_20)
  ; 315,398 -> 471,258
  (road location_20 location_1)
  ; 92,243 -> 315,398
  (road location_21 location_20)
  ; 315,398 -> 92,243
  (road location_20 location_21)
  ; 92,243 -> 22,400
  (road location_21 location_4)
  ; 22,400 -> 92,243
  (road location_4 location_21)
  ; 227,260 -> 315,398
  (road location_23 location_20)
  ; 315,398 -> 227,260
  (road location_20 location_23)
  ; 227,260 -> 22,400
  (road location_23 location_4)
  ; 22,400 -> 227,260
  (road location_4 location_23)
  ; 227,260 -> 471,258
  (road location_23 location_1)
  ; 471,258 -> 227,260
  (road location_1 location_23)
  ; 227,260 -> 92,243
  (road location_23 location_21)
  ; 92,243 -> 227,260
  (road location_21 location_23)
  ; 680,79 -> 471,258
  (road location_0 location_1)
  ; 471,258 -> 680,79
  (road location_1 location_0)
  ; 753,644 -> 916,940
  (road location_17 location_22)
  ; 916,940 -> 753,644
  (road location_22 location_17)
  ; 753,644 -> 427,691
  (road location_17 location_13)
  ; 427,691 -> 753,644
  (road location_13 location_17)
  ; 753,644 -> 973,444
  (road location_17 location_11)
  ; 973,444 -> 753,644
  (road location_11 location_17)
  ; 688,479 -> 427,691
  (road location_12 location_13)
  ; 427,691 -> 688,479
  (road location_13 location_12)
  ; 688,479 -> 973,444
  (road location_12 location_11)
  ; 973,444 -> 688,479
  (road location_11 location_12)
  ; 688,479 -> 471,258
  (road location_12 location_1)
  ; 471,258 -> 688,479
  (road location_1 location_12)
  ; 688,479 -> 753,644
  (road location_12 location_17)
  ; 753,644 -> 688,479
  (road location_17 location_12)
  ; 2358,437 -> 2387,219
  (road location_14 location_18)
  ; 2387,219 -> 2358,437
  (road location_18 location_14)
  ; 2220,489 -> 2387,219
  (road location_3 location_18)
  ; 2387,219 -> 2220,489
  (road location_18 location_3)
  ; 2220,489 -> 2358,437
  (road location_3 location_14)
  ; 2358,437 -> 2220,489
  (road location_14 location_3)
  ; 2504,478 -> 2387,219
  (road location_10 location_18)
  ; 2387,219 -> 2504,478
  (road location_18 location_10)
  ; 2504,478 -> 2358,437
  (road location_10 location_14)
  ; 2358,437 -> 2504,478
  (road location_14 location_10)
  ; 2504,478 -> 2220,489
  (road location_10 location_3)
  ; 2220,489 -> 2504,478
  (road location_3 location_10)
  ; 2532,77 -> 2387,219
  (road location_15 location_18)
  ; 2387,219 -> 2532,77
  (road location_18 location_15)
  ; 2395,718 -> 2358,437
  (road location_9 location_14)
  ; 2358,437 -> 2395,718
  (road location_14 location_9)
  ; 2395,718 -> 2475,953
  (road location_9 location_8)
  ; 2475,953 -> 2395,718
  (road location_8 location_9)
  ; 2395,718 -> 2220,489
  (road location_9 location_3)
  ; 2220,489 -> 2395,718
  (road location_3 location_9)
  ; 2395,718 -> 2504,478
  (road location_9 location_10)
  ; 2504,478 -> 2395,718
  (road location_10 location_9)
  ; 2609,959 -> 2475,953
  (road location_5 location_8)
  ; 2475,953 -> 2609,959
  (road location_8 location_5)
  ; 2609,959 -> 2395,718
  (road location_5 location_9)
  ; 2395,718 -> 2609,959
  (road location_9 location_5)
  ; 2094,247 -> 2387,219
  (road location_2 location_18)
  ; 2387,219 -> 2094,247
  (road location_18 location_2)
  ; 2094,247 -> 2358,437
  (road location_2 location_14)
  ; 2358,437 -> 2094,247
  (road location_14 location_2)
  ; 2094,247 -> 2220,489
  (road location_2 location_3)
  ; 2220,489 -> 2094,247
  (road location_3 location_2)
  ; 2670,416 -> 2358,437
  (road location_19 location_14)
  ; 2358,437 -> 2670,416
  (road location_14 location_19)
  ; 2670,416 -> 2504,478
  (road location_19 location_10)
  ; 2504,478 -> 2670,416
  (road location_10 location_19)
  ; 2670,416 -> 2836,585
  (road location_19 location_7)
  ; 2836,585 -> 2670,416
  (road location_7 location_19)
  ; 2933,446 -> 2836,585
  (road location_6 location_7)
  ; 2836,585 -> 2933,446
  (road location_7 location_6)
  ; 2933,446 -> 2670,416
  (road location_6 location_19)
  ; 2670,416 -> 2933,446
  (road location_19 location_6)
  ; 973,444 <-> 2094,247
  (road location_11 location_2)
  (road location_2 location_11)
  (at package_4 location_17)
  (at package_1 location_20)
  (at package_2 location_12)
  (at package_0 location_23)
  (at package_3 location_4)
  (at vehicle_0 location_10)
  (capacity vehicle_0 capacity-number_0)
  (at vehicle_1 location_2)
  (capacity vehicle_1 capacity-number_3)
 )
 (:goal (and
  (at package_4 location_9)
  (at package_1 location_10)
  (at package_2 location_2)
  (at package_0 location_3)
  (at package_3 location_6)
 ))
 
)
