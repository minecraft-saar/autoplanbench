; transport three-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed

(define (problem transport-three-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_8 - location
  location_20 - location
  location_29 - location
  location_6 - location
  location_10 - location
  location_27 - location
  location_30 - location
  location_35 - location
  location_2 - location
  location_34 - location
  location_5 - location
  location_32 - location
  location_7 - location
  location_13 - location
  location_21 - location
  location_28 - location
  location_3 - location
  location_33 - location
  location_9 - location
  location_23 - location
  location_4 - location
  location_11 - location
  location_12 - location
  location_18 - location
  location_0 - location
  location_16 - location
  location_15 - location
  location_26 - location
  location_19 - location
  location_1 - location
  location_31 - location
  location_14 - location
  location_22 - location
  location_17 - location
  location_25 - location
  location_24 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_4 - package
  package_3 - package
  package_1 - package
  package_0 - package
  package_2 - package
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_4)
  ; 427,691 -> 315,398
  (road location_30 location_8)
  ; 315,398 -> 427,691
  (road location_8 location_30)
  ; 22,400 -> 315,398
  (road location_34 location_8)
  ; 315,398 -> 22,400
  (road location_8 location_34)
  ; 125,677 -> 315,398
  (road location_7 location_8)
  ; 315,398 -> 125,677
  (road location_8 location_7)
  ; 125,677 -> 427,691
  (road location_7 location_30)
  ; 427,691 -> 125,677
  (road location_30 location_7)
  ; 125,677 -> 22,400
  (road location_7 location_34)
  ; 22,400 -> 125,677
  (road location_34 location_7)
  ; 471,258 -> 315,398
  (road location_9 location_8)
  ; 315,398 -> 471,258
  (road location_8 location_9)
  ; 92,243 -> 315,398
  (road location_11 location_8)
  ; 315,398 -> 92,243
  (road location_8 location_11)
  ; 92,243 -> 22,400
  (road location_11 location_34)
  ; 22,400 -> 92,243
  (road location_34 location_11)
  ; 227,260 -> 315,398
  (road location_0 location_8)
  ; 315,398 -> 227,260
  (road location_8 location_0)
  ; 227,260 -> 22,400
  (road location_0 location_34)
  ; 22,400 -> 227,260
  (road location_34 location_0)
  ; 227,260 -> 471,258
  (road location_0 location_9)
  ; 471,258 -> 227,260
  (road location_9 location_0)
  ; 227,260 -> 92,243
  (road location_0 location_11)
  ; 92,243 -> 227,260
  (road location_11 location_0)
  ; 680,79 -> 471,258
  (road location_26 location_9)
  ; 471,258 -> 680,79
  (road location_9 location_26)
  ; 753,644 -> 916,940
  (road location_31 location_6)
  ; 916,940 -> 753,644
  (road location_6 location_31)
  ; 753,644 -> 427,691
  (road location_31 location_30)
  ; 427,691 -> 753,644
  (road location_30 location_31)
  ; 753,644 -> 973,444
  (road location_31 location_28)
  ; 973,444 -> 753,644
  (road location_28 location_31)
  ; 688,479 -> 427,691
  (road location_17 location_30)
  ; 427,691 -> 688,479
  (road location_30 location_17)
  ; 688,479 -> 973,444
  (road location_17 location_28)
  ; 973,444 -> 688,479
  (road location_28 location_17)
  ; 688,479 -> 471,258
  (road location_17 location_9)
  ; 471,258 -> 688,479
  (road location_9 location_17)
  ; 688,479 -> 753,644
  (road location_17 location_31)
  ; 753,644 -> 688,479
  (road location_31 location_17)
  ; 2358,437 -> 2387,219
  (road location_10 location_20)
  ; 2387,219 -> 2358,437
  (road location_20 location_10)
  ; 2220,489 -> 2387,219
  (road location_5 location_20)
  ; 2387,219 -> 2220,489
  (road location_20 location_5)
  ; 2220,489 -> 2358,437
  (road location_5 location_10)
  ; 2358,437 -> 2220,489
  (road location_10 location_5)
  ; 2504,478 -> 2387,219
  (road location_13 location_20)
  ; 2387,219 -> 2504,478
  (road location_20 location_13)
  ; 2504,478 -> 2358,437
  (road location_13 location_10)
  ; 2358,437 -> 2504,478
  (road location_10 location_13)
  ; 2504,478 -> 2220,489
  (road location_13 location_5)
  ; 2220,489 -> 2504,478
  (road location_5 location_13)
  ; 2532,77 -> 2387,219
  (road location_3 location_20)
  ; 2387,219 -> 2532,77
  (road location_20 location_3)
  ; 2395,718 -> 2358,437
  (road location_23 location_10)
  ; 2358,437 -> 2395,718
  (road location_10 location_23)
  ; 2395,718 -> 2475,953
  (road location_23 location_35)
  ; 2475,953 -> 2395,718
  (road location_35 location_23)
  ; 2395,718 -> 2220,489
  (road location_23 location_5)
  ; 2220,489 -> 2395,718
  (road location_5 location_23)
  ; 2395,718 -> 2504,478
  (road location_23 location_13)
  ; 2504,478 -> 2395,718
  (road location_13 location_23)
  ; 2609,959 -> 2475,953
  (road location_12 location_35)
  ; 2475,953 -> 2609,959
  (road location_35 location_12)
  ; 2609,959 -> 2395,718
  (road location_12 location_23)
  ; 2395,718 -> 2609,959
  (road location_23 location_12)
  ; 2094,247 -> 2387,219
  (road location_19 location_20)
  ; 2387,219 -> 2094,247
  (road location_20 location_19)
  ; 2094,247 -> 2358,437
  (road location_19 location_10)
  ; 2358,437 -> 2094,247
  (road location_10 location_19)
  ; 2094,247 -> 2220,489
  (road location_19 location_5)
  ; 2220,489 -> 2094,247
  (road location_5 location_19)
  ; 2670,416 -> 2358,437
  (road location_14 location_10)
  ; 2358,437 -> 2670,416
  (road location_10 location_14)
  ; 2670,416 -> 2504,478
  (road location_14 location_13)
  ; 2504,478 -> 2670,416
  (road location_13 location_14)
  ; 2670,416 -> 2836,585
  (road location_14 location_16)
  ; 2836,585 -> 2670,416
  (road location_16 location_14)
  ; 2933,446 -> 2836,585
  (road location_25 location_16)
  ; 2836,585 -> 2933,446
  (road location_16 location_25)
  ; 2933,446 -> 2670,416
  (road location_25 location_14)
  ; 2670,416 -> 2933,446
  (road location_14 location_25)
  ; 1220,2554 -> 1331,2354
  (road location_21 location_2)
  ; 1331,2354 -> 1220,2554
  (road location_2 location_21)
  ; 1374,2777 -> 1596,2790
  (road location_33 location_32)
  ; 1596,2790 -> 1374,2777
  (road location_32 location_33)
  ; 1374,2777 -> 1220,2554
  (road location_33 location_21)
  ; 1220,2554 -> 1374,2777
  (road location_21 location_33)
  ; 1307,2925 -> 1596,2790
  (road location_4 location_32)
  ; 1596,2790 -> 1307,2925
  (road location_32 location_4)
  ; 1307,2925 -> 1374,2777
  (road location_4 location_33)
  ; 1374,2777 -> 1307,2925
  (road location_33 location_4)
  ; 1140,2736 -> 1220,2554
  (road location_18 location_21)
  ; 1220,2554 -> 1140,2736
  (road location_21 location_18)
  ; 1140,2736 -> 1374,2777
  (road location_18 location_33)
  ; 1374,2777 -> 1140,2736
  (road location_33 location_18)
  ; 1140,2736 -> 1307,2925
  (road location_18 location_4)
  ; 1307,2925 -> 1140,2736
  (road location_4 location_18)
  ; 1633,2694 -> 1946,2716
  (road location_15 location_27)
  ; 1946,2716 -> 1633,2694
  (road location_27 location_15)
  ; 1633,2694 -> 1596,2790
  (road location_15 location_32)
  ; 1596,2790 -> 1633,2694
  (road location_32 location_15)
  ; 1633,2694 -> 1374,2777
  (road location_15 location_33)
  ; 1374,2777 -> 1633,2694
  (road location_33 location_15)
  ; 1619,2195 -> 1870,2072
  (road location_1 location_29)
  ; 1870,2072 -> 1619,2195
  (road location_29 location_1)
  ; 1619,2195 -> 1331,2354
  (road location_1 location_2)
  ; 1331,2354 -> 1619,2195
  (road location_2 location_1)
  ; 1755,2326 -> 1870,2072
  (road location_22 location_29)
  ; 1870,2072 -> 1755,2326
  (road location_29 location_22)
  ; 1755,2326 -> 1619,2195
  (road location_22 location_1)
  ; 1619,2195 -> 1755,2326
  (road location_1 location_22)
  ; 1756,2712 -> 1946,2716
  (road location_24 location_27)
  ; 1946,2716 -> 1756,2712
  (road location_27 location_24)
  ; 1756,2712 -> 1596,2790
  (road location_24 location_32)
  ; 1596,2790 -> 1756,2712
  (road location_32 location_24)
  ; 1756,2712 -> 1633,2694
  (road location_24 location_15)
  ; 1633,2694 -> 1756,2712
  (road location_15 location_24)
  ; 973,444 <-> 2094,247
  (road location_28 location_19)
  (road location_19 location_28)
  (road location_6 location_1)
  (road location_1 location_6)
  (road location_19 location_1)
  (road location_1 location_19)
  (at package_4 location_13)
  (at package_3 location_6)
  (at package_1 location_25)
  (at package_0 location_22)
  (at package_2 location_34)
  (at vehicle_1 location_13)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_0 location_31)
  (capacity vehicle_0 capacity-number_3)
 )
 (:goal (and
  (at package_4 location_31)
  (at package_3 location_7)
  (at package_1 location_35)
  (at package_0 location_11)
  (at package_2 location_30)
 ))
 
)
