; Transport three-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-three-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
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
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-3-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-3-loc-14 - location
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-3-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-3-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-3-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
  city-3-loc-18 - location
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-3-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
  city-3-loc-20 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
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
  ; 22,400 -> 315,398
  (road city-1-loc-4 city-1-loc-1)
  ; 315,398 -> 22,400
  (road city-1-loc-1 city-1-loc-4)
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
  ; 753,644 -> 973,444
  (road city-1-loc-11 city-1-loc-6)
  ; 973,444 -> 753,644
  (road city-1-loc-6 city-1-loc-11)
  ; 688,479 -> 973,444
  (road city-1-loc-12 city-1-loc-6)
  ; 973,444 -> 688,479
  (road city-1-loc-6 city-1-loc-12)
  ; 688,479 -> 753,644
  (road city-1-loc-12 city-1-loc-11)
  ; 753,644 -> 688,479
  (road city-1-loc-11 city-1-loc-12)
  ; 197,108 -> 92,243
  (road city-1-loc-13 city-1-loc-8)
  ; 92,243 -> 197,108
  (road city-1-loc-8 city-1-loc-13)
  ; 197,108 -> 227,260
  (road city-1-loc-13 city-1-loc-9)
  ; 227,260 -> 197,108
  (road city-1-loc-9 city-1-loc-13)
  ; 630,336 -> 471,258
  (road city-1-loc-14 city-1-loc-7)
  ; 471,258 -> 630,336
  (road city-1-loc-7 city-1-loc-14)
  ; 630,336 -> 680,79
  (road city-1-loc-14 city-1-loc-10)
  ; 680,79 -> 630,336
  (road city-1-loc-10 city-1-loc-14)
  ; 630,336 -> 688,479
  (road city-1-loc-14 city-1-loc-12)
  ; 688,479 -> 630,336
  (road city-1-loc-12 city-1-loc-14)
  ; 66,817 -> 125,677
  (road city-1-loc-15 city-1-loc-5)
  ; 125,677 -> 66,817
  (road city-1-loc-5 city-1-loc-15)
  ; 878,76 -> 680,79
  (road city-1-loc-16 city-1-loc-10)
  ; 680,79 -> 878,76
  (road city-1-loc-10 city-1-loc-16)
  ; 793,194 -> 680,79
  (road city-1-loc-17 city-1-loc-10)
  ; 680,79 -> 793,194
  (road city-1-loc-10 city-1-loc-17)
  ; 793,194 -> 630,336
  (road city-1-loc-17 city-1-loc-14)
  ; 630,336 -> 793,194
  (road city-1-loc-14 city-1-loc-17)
  ; 793,194 -> 878,76
  (road city-1-loc-17 city-1-loc-16)
  ; 878,76 -> 793,194
  (road city-1-loc-16 city-1-loc-17)
  ; 166,870 -> 125,677
  (road city-1-loc-18 city-1-loc-5)
  ; 125,677 -> 166,870
  (road city-1-loc-5 city-1-loc-18)
  ; 166,870 -> 66,817
  (road city-1-loc-18 city-1-loc-15)
  ; 66,817 -> 166,870
  (road city-1-loc-15 city-1-loc-18)
  ; 833,827 -> 916,940
  (road city-1-loc-19 city-1-loc-2)
  ; 916,940 -> 833,827
  (road city-1-loc-2 city-1-loc-19)
  ; 833,827 -> 753,644
  (road city-1-loc-19 city-1-loc-11)
  ; 753,644 -> 833,827
  (road city-1-loc-11 city-1-loc-19)
  ; 41,918 -> 125,677
  (road city-1-loc-20 city-1-loc-5)
  ; 125,677 -> 41,918
  (road city-1-loc-5 city-1-loc-20)
  ; 41,918 -> 66,817
  (road city-1-loc-20 city-1-loc-15)
  ; 66,817 -> 41,918
  (road city-1-loc-15 city-1-loc-20)
  ; 41,918 -> 166,870
  (road city-1-loc-20 city-1-loc-18)
  ; 166,870 -> 41,918
  (road city-1-loc-18 city-1-loc-20)
  ; 2148,17 -> 2340,7
  (road city-2-loc-5 city-2-loc-2)
  ; 2340,7 -> 2148,17
  (road city-2-loc-2 city-2-loc-5)
  ; 2866,797 -> 2973,757
  (road city-2-loc-6 city-2-loc-4)
  ; 2973,757 -> 2866,797
  (road city-2-loc-4 city-2-loc-6)
  ; 2822,267 -> 2675,345
  (road city-2-loc-8 city-2-loc-3)
  ; 2675,345 -> 2822,267
  (road city-2-loc-3 city-2-loc-8)
  ; 2599,455 -> 2675,345
  (road city-2-loc-9 city-2-loc-3)
  ; 2675,345 -> 2599,455
  (road city-2-loc-3 city-2-loc-9)
  ; 2599,455 -> 2822,267
  (road city-2-loc-9 city-2-loc-8)
  ; 2822,267 -> 2599,455
  (road city-2-loc-8 city-2-loc-9)
  ; 2370,762 -> 2436,867
  (road city-2-loc-10 city-2-loc-7)
  ; 2436,867 -> 2370,762
  (road city-2-loc-7 city-2-loc-10)
  ; 2209,484 -> 2118,400
  (road city-2-loc-11 city-2-loc-1)
  ; 2118,400 -> 2209,484
  (road city-2-loc-1 city-2-loc-11)
  ; 2693,779 -> 2973,757
  (road city-2-loc-12 city-2-loc-4)
  ; 2973,757 -> 2693,779
  (road city-2-loc-4 city-2-loc-12)
  ; 2693,779 -> 2866,797
  (road city-2-loc-12 city-2-loc-6)
  ; 2866,797 -> 2693,779
  (road city-2-loc-6 city-2-loc-12)
  ; 2693,779 -> 2436,867
  (road city-2-loc-12 city-2-loc-7)
  ; 2436,867 -> 2693,779
  (road city-2-loc-7 city-2-loc-12)
  ; 2530,579 -> 2675,345
  (road city-2-loc-13 city-2-loc-3)
  ; 2675,345 -> 2530,579
  (road city-2-loc-3 city-2-loc-13)
  ; 2530,579 -> 2599,455
  (road city-2-loc-13 city-2-loc-9)
  ; 2599,455 -> 2530,579
  (road city-2-loc-9 city-2-loc-13)
  ; 2530,579 -> 2370,762
  (road city-2-loc-13 city-2-loc-10)
  ; 2370,762 -> 2530,579
  (road city-2-loc-10 city-2-loc-13)
  ; 2530,579 -> 2693,779
  (road city-2-loc-13 city-2-loc-12)
  ; 2693,779 -> 2530,579
  (road city-2-loc-12 city-2-loc-13)
  ; 2959,210 -> 2822,267
  (road city-2-loc-14 city-2-loc-8)
  ; 2822,267 -> 2959,210
  (road city-2-loc-8 city-2-loc-14)
  ; 2226,928 -> 2436,867
  (road city-2-loc-15 city-2-loc-7)
  ; 2436,867 -> 2226,928
  (road city-2-loc-7 city-2-loc-15)
  ; 2226,928 -> 2370,762
  (road city-2-loc-15 city-2-loc-10)
  ; 2370,762 -> 2226,928
  (road city-2-loc-10 city-2-loc-15)
  ; 2391,278 -> 2118,400
  (road city-2-loc-16 city-2-loc-1)
  ; 2118,400 -> 2391,278
  (road city-2-loc-1 city-2-loc-16)
  ; 2391,278 -> 2340,7
  (road city-2-loc-16 city-2-loc-2)
  ; 2340,7 -> 2391,278
  (road city-2-loc-2 city-2-loc-16)
  ; 2391,278 -> 2675,345
  (road city-2-loc-16 city-2-loc-3)
  ; 2675,345 -> 2391,278
  (road city-2-loc-3 city-2-loc-16)
  ; 2391,278 -> 2599,455
  (road city-2-loc-16 city-2-loc-9)
  ; 2599,455 -> 2391,278
  (road city-2-loc-9 city-2-loc-16)
  ; 2391,278 -> 2209,484
  (road city-2-loc-16 city-2-loc-11)
  ; 2209,484 -> 2391,278
  (road city-2-loc-11 city-2-loc-16)
  ; 2901,439 -> 2675,345
  (road city-2-loc-17 city-2-loc-3)
  ; 2675,345 -> 2901,439
  (road city-2-loc-3 city-2-loc-17)
  ; 2901,439 -> 2822,267
  (road city-2-loc-17 city-2-loc-8)
  ; 2822,267 -> 2901,439
  (road city-2-loc-8 city-2-loc-17)
  ; 2901,439 -> 2599,455
  (road city-2-loc-17 city-2-loc-9)
  ; 2599,455 -> 2901,439
  (road city-2-loc-9 city-2-loc-17)
  ; 2901,439 -> 2959,210
  (road city-2-loc-17 city-2-loc-14)
  ; 2959,210 -> 2901,439
  (road city-2-loc-14 city-2-loc-17)
  ; 2888,1 -> 2822,267
  (road city-2-loc-18 city-2-loc-8)
  ; 2822,267 -> 2888,1
  (road city-2-loc-8 city-2-loc-18)
  ; 2888,1 -> 2959,210
  (road city-2-loc-18 city-2-loc-14)
  ; 2959,210 -> 2888,1
  (road city-2-loc-14 city-2-loc-18)
  ; 2921,550 -> 2973,757
  (road city-2-loc-19 city-2-loc-4)
  ; 2973,757 -> 2921,550
  (road city-2-loc-4 city-2-loc-19)
  ; 2921,550 -> 2866,797
  (road city-2-loc-19 city-2-loc-6)
  ; 2866,797 -> 2921,550
  (road city-2-loc-6 city-2-loc-19)
  ; 2921,550 -> 2822,267
  (road city-2-loc-19 city-2-loc-8)
  ; 2822,267 -> 2921,550
  (road city-2-loc-8 city-2-loc-19)
  ; 2921,550 -> 2901,439
  (road city-2-loc-19 city-2-loc-17)
  ; 2901,439 -> 2921,550
  (road city-2-loc-17 city-2-loc-19)
  ; 2581,683 -> 2436,867
  (road city-2-loc-20 city-2-loc-7)
  ; 2436,867 -> 2581,683
  (road city-2-loc-7 city-2-loc-20)
  ; 2581,683 -> 2599,455
  (road city-2-loc-20 city-2-loc-9)
  ; 2599,455 -> 2581,683
  (road city-2-loc-9 city-2-loc-20)
  ; 2581,683 -> 2370,762
  (road city-2-loc-20 city-2-loc-10)
  ; 2370,762 -> 2581,683
  (road city-2-loc-10 city-2-loc-20)
  ; 2581,683 -> 2693,779
  (road city-2-loc-20 city-2-loc-12)
  ; 2693,779 -> 2581,683
  (road city-2-loc-12 city-2-loc-20)
  ; 2581,683 -> 2530,579
  (road city-2-loc-20 city-2-loc-13)
  ; 2530,579 -> 2581,683
  (road city-2-loc-13 city-2-loc-20)
  ; 1374,2777 -> 1220,2554
  (road city-3-loc-2 city-3-loc-1)
  ; 1220,2554 -> 1374,2777
  (road city-3-loc-1 city-3-loc-2)
  ; 1307,2925 -> 1374,2777
  (road city-3-loc-3 city-3-loc-2)
  ; 1374,2777 -> 1307,2925
  (road city-3-loc-2 city-3-loc-3)
  ; 1140,2736 -> 1220,2554
  (road city-3-loc-4 city-3-loc-1)
  ; 1220,2554 -> 1140,2736
  (road city-3-loc-1 city-3-loc-4)
  ; 1140,2736 -> 1374,2777
  (road city-3-loc-4 city-3-loc-2)
  ; 1374,2777 -> 1140,2736
  (road city-3-loc-2 city-3-loc-4)
  ; 1140,2736 -> 1307,2925
  (road city-3-loc-4 city-3-loc-3)
  ; 1307,2925 -> 1140,2736
  (road city-3-loc-3 city-3-loc-4)
  ; 1260,2356 -> 1220,2554
  (road city-3-loc-5 city-3-loc-1)
  ; 1220,2554 -> 1260,2356
  (road city-3-loc-1 city-3-loc-5)
  ; 1577,2848 -> 1374,2777
  (road city-3-loc-6 city-3-loc-2)
  ; 1374,2777 -> 1577,2848
  (road city-3-loc-2 city-3-loc-6)
  ; 1577,2848 -> 1307,2925
  (road city-3-loc-6 city-3-loc-3)
  ; 1307,2925 -> 1577,2848
  (road city-3-loc-3 city-3-loc-6)
  ; 1633,2694 -> 1374,2777
  (road city-3-loc-7 city-3-loc-2)
  ; 1374,2777 -> 1633,2694
  (road city-3-loc-2 city-3-loc-7)
  ; 1633,2694 -> 1577,2848
  (road city-3-loc-7 city-3-loc-6)
  ; 1577,2848 -> 1633,2694
  (road city-3-loc-6 city-3-loc-7)
  ; 1755,2326 -> 1619,2195
  (road city-3-loc-10 city-3-loc-8)
  ; 1619,2195 -> 1755,2326
  (road city-3-loc-8 city-3-loc-10)
  ; 1756,2712 -> 1577,2848
  (road city-3-loc-11 city-3-loc-6)
  ; 1577,2848 -> 1756,2712
  (road city-3-loc-6 city-3-loc-11)
  ; 1756,2712 -> 1633,2694
  (road city-3-loc-11 city-3-loc-7)
  ; 1633,2694 -> 1756,2712
  (road city-3-loc-7 city-3-loc-11)
  ; 1756,2712 -> 1983,2755
  (road city-3-loc-11 city-3-loc-9)
  ; 1983,2755 -> 1756,2712
  (road city-3-loc-9 city-3-loc-11)
  ; 1504,2342 -> 1260,2356
  (road city-3-loc-12 city-3-loc-5)
  ; 1260,2356 -> 1504,2342
  (road city-3-loc-5 city-3-loc-12)
  ; 1504,2342 -> 1619,2195
  (road city-3-loc-12 city-3-loc-8)
  ; 1619,2195 -> 1504,2342
  (road city-3-loc-8 city-3-loc-12)
  ; 1504,2342 -> 1755,2326
  (road city-3-loc-12 city-3-loc-10)
  ; 1755,2326 -> 1504,2342
  (road city-3-loc-10 city-3-loc-12)
  ; 1134,2151 -> 1260,2356
  (road city-3-loc-13 city-3-loc-5)
  ; 1260,2356 -> 1134,2151
  (road city-3-loc-5 city-3-loc-13)
  ; 1651,2991 -> 1577,2848
  (road city-3-loc-14 city-3-loc-6)
  ; 1577,2848 -> 1651,2991
  (road city-3-loc-6 city-3-loc-14)
  ; 1651,2991 -> 1633,2694
  (road city-3-loc-14 city-3-loc-7)
  ; 1633,2694 -> 1651,2991
  (road city-3-loc-7 city-3-loc-14)
  ; 1651,2991 -> 1756,2712
  (road city-3-loc-14 city-3-loc-11)
  ; 1756,2712 -> 1651,2991
  (road city-3-loc-11 city-3-loc-14)
  ; 1822,2842 -> 1577,2848
  (road city-3-loc-15 city-3-loc-6)
  ; 1577,2848 -> 1822,2842
  (road city-3-loc-6 city-3-loc-15)
  ; 1822,2842 -> 1633,2694
  (road city-3-loc-15 city-3-loc-7)
  ; 1633,2694 -> 1822,2842
  (road city-3-loc-7 city-3-loc-15)
  ; 1822,2842 -> 1983,2755
  (road city-3-loc-15 city-3-loc-9)
  ; 1983,2755 -> 1822,2842
  (road city-3-loc-9 city-3-loc-15)
  ; 1822,2842 -> 1756,2712
  (road city-3-loc-15 city-3-loc-11)
  ; 1756,2712 -> 1822,2842
  (road city-3-loc-11 city-3-loc-15)
  ; 1822,2842 -> 1651,2991
  (road city-3-loc-15 city-3-loc-14)
  ; 1651,2991 -> 1822,2842
  (road city-3-loc-14 city-3-loc-15)
  ; 1864,2302 -> 1619,2195
  (road city-3-loc-16 city-3-loc-8)
  ; 1619,2195 -> 1864,2302
  (road city-3-loc-8 city-3-loc-16)
  ; 1864,2302 -> 1755,2326
  (road city-3-loc-16 city-3-loc-10)
  ; 1755,2326 -> 1864,2302
  (road city-3-loc-10 city-3-loc-16)
  ; 1847,2622 -> 1633,2694
  (road city-3-loc-17 city-3-loc-7)
  ; 1633,2694 -> 1847,2622
  (road city-3-loc-7 city-3-loc-17)
  ; 1847,2622 -> 1983,2755
  (road city-3-loc-17 city-3-loc-9)
  ; 1983,2755 -> 1847,2622
  (road city-3-loc-9 city-3-loc-17)
  ; 1847,2622 -> 1756,2712
  (road city-3-loc-17 city-3-loc-11)
  ; 1756,2712 -> 1847,2622
  (road city-3-loc-11 city-3-loc-17)
  ; 1847,2622 -> 1822,2842
  (road city-3-loc-17 city-3-loc-15)
  ; 1822,2842 -> 1847,2622
  (road city-3-loc-15 city-3-loc-17)
  ; 1070,2845 -> 1307,2925
  (road city-3-loc-18 city-3-loc-3)
  ; 1307,2925 -> 1070,2845
  (road city-3-loc-3 city-3-loc-18)
  ; 1070,2845 -> 1140,2736
  (road city-3-loc-18 city-3-loc-4)
  ; 1140,2736 -> 1070,2845
  (road city-3-loc-4 city-3-loc-18)
  ; 1291,2215 -> 1260,2356
  (road city-3-loc-19 city-3-loc-5)
  ; 1260,2356 -> 1291,2215
  (road city-3-loc-5 city-3-loc-19)
  ; 1291,2215 -> 1504,2342
  (road city-3-loc-19 city-3-loc-12)
  ; 1504,2342 -> 1291,2215
  (road city-3-loc-12 city-3-loc-19)
  ; 1291,2215 -> 1134,2151
  (road city-3-loc-19 city-3-loc-13)
  ; 1134,2151 -> 1291,2215
  (road city-3-loc-13 city-3-loc-19)
  ; 1787,2079 -> 1619,2195
  (road city-3-loc-20 city-3-loc-8)
  ; 1619,2195 -> 1787,2079
  (road city-3-loc-8 city-3-loc-20)
  ; 1787,2079 -> 1755,2326
  (road city-3-loc-20 city-3-loc-10)
  ; 1755,2326 -> 1787,2079
  (road city-3-loc-10 city-3-loc-20)
  ; 1787,2079 -> 1864,2302
  (road city-3-loc-20 city-3-loc-16)
  ; 1864,2302 -> 1787,2079
  (road city-3-loc-16 city-3-loc-20)
  ; 973,444 <-> 2118,400
  (road city-1-loc-6 city-2-loc-1)
  (road city-2-loc-1 city-1-loc-6)
  (road city-1-loc-6 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-6)
  (road city-2-loc-17 city-3-loc-15)
  (road city-3-loc-15 city-2-loc-17)
  (at package-1 city-3-loc-8)
  (at package-2 city-2-loc-2)
  (at package-3 city-1-loc-9)
  (at package-4 city-1-loc-14)
  (at package-5 city-2-loc-2)
  (at package-6 city-2-loc-10)
  (at truck-1 city-1-loc-12)
  (capacity truck-1 capacity-4)
  (at truck-2 city-3-loc-14)
  (capacity truck-2 capacity-2)
  (at truck-3 city-1-loc-1)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-1-loc-11)
  (at package-2 city-2-loc-5)
  (at package-3 city-2-loc-17)
  (at package-4 city-1-loc-9)
  (at package-5 city-1-loc-12)
  (at package-6 city-1-loc-5)
 ))
 
)
