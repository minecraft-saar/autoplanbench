; Transport three-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed

(define (problem transport-three-cities-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2014seed)
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
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-3-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-3-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-3-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-3-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-3-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-3-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-3-loc-12 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
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
  ; 427,691 -> 315,398
  (road city-1-loc-3 city-1-loc-1)
  ; 315,398 -> 427,691
  (road city-1-loc-1 city-1-loc-3)
  ; 22,400 -> 315,398
  (road city-1-loc-4 city-1-loc-1)
  ; 315,398 -> 22,400
  (road city-1-loc-1 city-1-loc-4)
  ; 125,677 -> 315,398
  (road city-1-loc-5 city-1-loc-1)
  ; 315,398 -> 125,677
  (road city-1-loc-1 city-1-loc-5)
  ; 125,677 -> 427,691
  (road city-1-loc-5 city-1-loc-3)
  ; 427,691 -> 125,677
  (road city-1-loc-3 city-1-loc-5)
  ; 125,677 -> 22,400
  (road city-1-loc-5 city-1-loc-4)
  ; 22,400 -> 125,677
  (road city-1-loc-4 city-1-loc-5)
  ; 471,258 -> 315,398
  (road city-1-loc-7 city-1-loc-1)
  ; 315,398 -> 471,258
  (road city-1-loc-1 city-1-loc-7)
  ; 92,243 -> 315,398
  (road city-1-loc-8 city-1-loc-1)
  ; 315,398 -> 92,243
  (road city-1-loc-1 city-1-loc-8)
  ; 92,243 -> 22,400
  (road city-1-loc-8 city-1-loc-4)
  ; 22,400 -> 92,243
  (road city-1-loc-4 city-1-loc-8)
  ; 227,260 -> 315,398
  (road city-1-loc-9 city-1-loc-1)
  ; 315,398 -> 227,260
  (road city-1-loc-1 city-1-loc-9)
  ; 227,260 -> 22,400
  (road city-1-loc-9 city-1-loc-4)
  ; 22,400 -> 227,260
  (road city-1-loc-4 city-1-loc-9)
  ; 227,260 -> 471,258
  (road city-1-loc-9 city-1-loc-7)
  ; 471,258 -> 227,260
  (road city-1-loc-7 city-1-loc-9)
  ; 227,260 -> 92,243
  (road city-1-loc-9 city-1-loc-8)
  ; 92,243 -> 227,260
  (road city-1-loc-8 city-1-loc-9)
  ; 680,79 -> 471,258
  (road city-1-loc-10 city-1-loc-7)
  ; 471,258 -> 680,79
  (road city-1-loc-7 city-1-loc-10)
  ; 753,644 -> 916,940
  (road city-1-loc-11 city-1-loc-2)
  ; 916,940 -> 753,644
  (road city-1-loc-2 city-1-loc-11)
  ; 753,644 -> 427,691
  (road city-1-loc-11 city-1-loc-3)
  ; 427,691 -> 753,644
  (road city-1-loc-3 city-1-loc-11)
  ; 753,644 -> 973,444
  (road city-1-loc-11 city-1-loc-6)
  ; 973,444 -> 753,644
  (road city-1-loc-6 city-1-loc-11)
  ; 688,479 -> 427,691
  (road city-1-loc-12 city-1-loc-3)
  ; 427,691 -> 688,479
  (road city-1-loc-3 city-1-loc-12)
  ; 688,479 -> 973,444
  (road city-1-loc-12 city-1-loc-6)
  ; 973,444 -> 688,479
  (road city-1-loc-6 city-1-loc-12)
  ; 688,479 -> 471,258
  (road city-1-loc-12 city-1-loc-7)
  ; 471,258 -> 688,479
  (road city-1-loc-7 city-1-loc-12)
  ; 688,479 -> 753,644
  (road city-1-loc-12 city-1-loc-11)
  ; 753,644 -> 688,479
  (road city-1-loc-11 city-1-loc-12)
  ; 2358,437 -> 2387,219
  (road city-2-loc-2 city-2-loc-1)
  ; 2387,219 -> 2358,437
  (road city-2-loc-1 city-2-loc-2)
  ; 2220,489 -> 2387,219
  (road city-2-loc-4 city-2-loc-1)
  ; 2387,219 -> 2220,489
  (road city-2-loc-1 city-2-loc-4)
  ; 2220,489 -> 2358,437
  (road city-2-loc-4 city-2-loc-2)
  ; 2358,437 -> 2220,489
  (road city-2-loc-2 city-2-loc-4)
  ; 2504,478 -> 2387,219
  (road city-2-loc-5 city-2-loc-1)
  ; 2387,219 -> 2504,478
  (road city-2-loc-1 city-2-loc-5)
  ; 2504,478 -> 2358,437
  (road city-2-loc-5 city-2-loc-2)
  ; 2358,437 -> 2504,478
  (road city-2-loc-2 city-2-loc-5)
  ; 2504,478 -> 2220,489
  (road city-2-loc-5 city-2-loc-4)
  ; 2220,489 -> 2504,478
  (road city-2-loc-4 city-2-loc-5)
  ; 2532,77 -> 2387,219
  (road city-2-loc-6 city-2-loc-1)
  ; 2387,219 -> 2532,77
  (road city-2-loc-1 city-2-loc-6)
  ; 2395,718 -> 2358,437
  (road city-2-loc-7 city-2-loc-2)
  ; 2358,437 -> 2395,718
  (road city-2-loc-2 city-2-loc-7)
  ; 2395,718 -> 2475,953
  (road city-2-loc-7 city-2-loc-3)
  ; 2475,953 -> 2395,718
  (road city-2-loc-3 city-2-loc-7)
  ; 2395,718 -> 2220,489
  (road city-2-loc-7 city-2-loc-4)
  ; 2220,489 -> 2395,718
  (road city-2-loc-4 city-2-loc-7)
  ; 2395,718 -> 2504,478
  (road city-2-loc-7 city-2-loc-5)
  ; 2504,478 -> 2395,718
  (road city-2-loc-5 city-2-loc-7)
  ; 2609,959 -> 2475,953
  (road city-2-loc-8 city-2-loc-3)
  ; 2475,953 -> 2609,959
  (road city-2-loc-3 city-2-loc-8)
  ; 2609,959 -> 2395,718
  (road city-2-loc-8 city-2-loc-7)
  ; 2395,718 -> 2609,959
  (road city-2-loc-7 city-2-loc-8)
  ; 2094,247 -> 2387,219
  (road city-2-loc-10 city-2-loc-1)
  ; 2387,219 -> 2094,247
  (road city-2-loc-1 city-2-loc-10)
  ; 2094,247 -> 2358,437
  (road city-2-loc-10 city-2-loc-2)
  ; 2358,437 -> 2094,247
  (road city-2-loc-2 city-2-loc-10)
  ; 2094,247 -> 2220,489
  (road city-2-loc-10 city-2-loc-4)
  ; 2220,489 -> 2094,247
  (road city-2-loc-4 city-2-loc-10)
  ; 2670,416 -> 2358,437
  (road city-2-loc-11 city-2-loc-2)
  ; 2358,437 -> 2670,416
  (road city-2-loc-2 city-2-loc-11)
  ; 2670,416 -> 2504,478
  (road city-2-loc-11 city-2-loc-5)
  ; 2504,478 -> 2670,416
  (road city-2-loc-5 city-2-loc-11)
  ; 2670,416 -> 2836,585
  (road city-2-loc-11 city-2-loc-9)
  ; 2836,585 -> 2670,416
  (road city-2-loc-9 city-2-loc-11)
  ; 2933,446 -> 2836,585
  (road city-2-loc-12 city-2-loc-9)
  ; 2836,585 -> 2933,446
  (road city-2-loc-9 city-2-loc-12)
  ; 2933,446 -> 2670,416
  (road city-2-loc-12 city-2-loc-11)
  ; 2670,416 -> 2933,446
  (road city-2-loc-11 city-2-loc-12)
  ; 1220,2554 -> 1331,2354
  (road city-3-loc-5 city-3-loc-3)
  ; 1331,2354 -> 1220,2554
  (road city-3-loc-3 city-3-loc-5)
  ; 1374,2777 -> 1596,2790
  (road city-3-loc-6 city-3-loc-4)
  ; 1596,2790 -> 1374,2777
  (road city-3-loc-4 city-3-loc-6)
  ; 1374,2777 -> 1220,2554
  (road city-3-loc-6 city-3-loc-5)
  ; 1220,2554 -> 1374,2777
  (road city-3-loc-5 city-3-loc-6)
  ; 1307,2925 -> 1596,2790
  (road city-3-loc-7 city-3-loc-4)
  ; 1596,2790 -> 1307,2925
  (road city-3-loc-4 city-3-loc-7)
  ; 1307,2925 -> 1374,2777
  (road city-3-loc-7 city-3-loc-6)
  ; 1374,2777 -> 1307,2925
  (road city-3-loc-6 city-3-loc-7)
  ; 1140,2736 -> 1220,2554
  (road city-3-loc-8 city-3-loc-5)
  ; 1220,2554 -> 1140,2736
  (road city-3-loc-5 city-3-loc-8)
  ; 1140,2736 -> 1374,2777
  (road city-3-loc-8 city-3-loc-6)
  ; 1374,2777 -> 1140,2736
  (road city-3-loc-6 city-3-loc-8)
  ; 1140,2736 -> 1307,2925
  (road city-3-loc-8 city-3-loc-7)
  ; 1307,2925 -> 1140,2736
  (road city-3-loc-7 city-3-loc-8)
  ; 1633,2694 -> 1946,2716
  (road city-3-loc-9 city-3-loc-2)
  ; 1946,2716 -> 1633,2694
  (road city-3-loc-2 city-3-loc-9)
  ; 1633,2694 -> 1596,2790
  (road city-3-loc-9 city-3-loc-4)
  ; 1596,2790 -> 1633,2694
  (road city-3-loc-4 city-3-loc-9)
  ; 1633,2694 -> 1374,2777
  (road city-3-loc-9 city-3-loc-6)
  ; 1374,2777 -> 1633,2694
  (road city-3-loc-6 city-3-loc-9)
  ; 1619,2195 -> 1870,2072
  (road city-3-loc-10 city-3-loc-1)
  ; 1870,2072 -> 1619,2195
  (road city-3-loc-1 city-3-loc-10)
  ; 1619,2195 -> 1331,2354
  (road city-3-loc-10 city-3-loc-3)
  ; 1331,2354 -> 1619,2195
  (road city-3-loc-3 city-3-loc-10)
  ; 1755,2326 -> 1870,2072
  (road city-3-loc-11 city-3-loc-1)
  ; 1870,2072 -> 1755,2326
  (road city-3-loc-1 city-3-loc-11)
  ; 1755,2326 -> 1619,2195
  (road city-3-loc-11 city-3-loc-10)
  ; 1619,2195 -> 1755,2326
  (road city-3-loc-10 city-3-loc-11)
  ; 1756,2712 -> 1946,2716
  (road city-3-loc-12 city-3-loc-2)
  ; 1946,2716 -> 1756,2712
  (road city-3-loc-2 city-3-loc-12)
  ; 1756,2712 -> 1596,2790
  (road city-3-loc-12 city-3-loc-4)
  ; 1596,2790 -> 1756,2712
  (road city-3-loc-4 city-3-loc-12)
  ; 1756,2712 -> 1633,2694
  (road city-3-loc-12 city-3-loc-9)
  ; 1633,2694 -> 1756,2712
  (road city-3-loc-9 city-3-loc-12)
  ; 973,444 <-> 2094,247
  (road city-1-loc-6 city-2-loc-10)
  (road city-2-loc-10 city-1-loc-6)
  (road city-1-loc-2 city-3-loc-10)
  (road city-3-loc-10 city-1-loc-2)
  (road city-2-loc-10 city-3-loc-10)
  (road city-3-loc-10 city-2-loc-10)
  (at package-1 city-2-loc-5)
  (at package-2 city-1-loc-2)
  (at package-3 city-2-loc-12)
  (at package-4 city-3-loc-11)
  (at package-5 city-1-loc-4)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-1-loc-11)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-1-loc-11)
  (at package-2 city-1-loc-5)
  (at package-3 city-2-loc-3)
  (at package-4 city-1-loc-8)
  (at package-5 city-1-loc-3)
 ))
 
)
