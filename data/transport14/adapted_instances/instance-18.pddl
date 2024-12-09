; transport three-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-three-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_5 - location
  location_44 - location
  location_40 - location
  location_53 - location
  location_25 - location
  location_8 - location
  location_28 - location
  location_0 - location
  location_30 - location
  location_32 - location
  location_38 - location
  location_6 - location
  location_31 - location
  location_33 - location
  location_51 - location
  location_34 - location
  location_49 - location
  location_54 - location
  location_19 - location
  location_2 - location
  location_18 - location
  location_21 - location
  location_37 - location
  location_29 - location
  location_43 - location
  location_59 - location
  location_58 - location
  location_46 - location
  location_52 - location
  location_1 - location
  location_10 - location
  location_14 - location
  location_35 - location
  location_7 - location
  location_45 - location
  location_24 - location
  location_17 - location
  location_20 - location
  location_48 - location
  location_26 - location
  location_13 - location
  location_57 - location
  location_56 - location
  location_55 - location
  location_16 - location
  location_4 - location
  location_47 - location
  location_11 - location
  location_27 - location
  location_23 - location
  location_42 - location
  location_3 - location
  location_12 - location
  location_41 - location
  location_39 - location
  location_50 - location
  location_15 - location
  location_36 - location
  location_22 - location
  location_9 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_3 - package
  package_2 - package
  package_1 - package
  package_0 - package
  package_4 - package
  package_5 - package
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_0 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  ; 22,400 -> 315,398
  (road location_32 location_5)
  ; 315,398 -> 22,400
  (road location_5 location_32)
  ; 125,677 -> 427,691
  (road location_31 location_28)
  ; 427,691 -> 125,677
  (road location_28 location_31)
  ; 125,677 -> 22,400
  (road location_31 location_32)
  ; 22,400 -> 125,677
  (road location_32 location_31)
  ; 471,258 -> 315,398
  (road location_19 location_5)
  ; 315,398 -> 471,258
  (road location_5 location_19)
  ; 92,243 -> 315,398
  (road location_21 location_5)
  ; 315,398 -> 92,243
  (road location_5 location_21)
  ; 92,243 -> 22,400
  (road location_21 location_32)
  ; 22,400 -> 92,243
  (road location_32 location_21)
  ; 227,260 -> 315,398
  (road location_43 location_5)
  ; 315,398 -> 227,260
  (road location_5 location_43)
  ; 227,260 -> 22,400
  (road location_43 location_32)
  ; 22,400 -> 227,260
  (road location_32 location_43)
  ; 227,260 -> 471,258
  (road location_43 location_19)
  ; 471,258 -> 227,260
  (road location_19 location_43)
  ; 227,260 -> 92,243
  (road location_43 location_21)
  ; 92,243 -> 227,260
  (road location_21 location_43)
  ; 680,79 -> 471,258
  (road location_46 location_19)
  ; 471,258 -> 680,79
  (road location_19 location_46)
  ; 753,644 -> 973,444
  (road location_10 location_34)
  ; 973,444 -> 753,644
  (road location_34 location_10)
  ; 688,479 -> 973,444
  (road location_7 location_34)
  ; 973,444 -> 688,479
  (road location_34 location_7)
  ; 688,479 -> 753,644
  (road location_7 location_10)
  ; 753,644 -> 688,479
  (road location_10 location_7)
  ; 197,108 -> 92,243
  (road location_17 location_21)
  ; 92,243 -> 197,108
  (road location_21 location_17)
  ; 197,108 -> 227,260
  (road location_17 location_43)
  ; 227,260 -> 197,108
  (road location_43 location_17)
  ; 630,336 -> 471,258
  (road location_26 location_19)
  ; 471,258 -> 630,336
  (road location_19 location_26)
  ; 630,336 -> 680,79
  (road location_26 location_46)
  ; 680,79 -> 630,336
  (road location_46 location_26)
  ; 630,336 -> 688,479
  (road location_26 location_7)
  ; 688,479 -> 630,336
  (road location_7 location_26)
  ; 66,817 -> 125,677
  (road location_56 location_31)
  ; 125,677 -> 66,817
  (road location_31 location_56)
  ; 878,76 -> 680,79
  (road location_4 location_46)
  ; 680,79 -> 878,76
  (road location_46 location_4)
  ; 793,194 -> 680,79
  (road location_27 location_46)
  ; 680,79 -> 793,194
  (road location_46 location_27)
  ; 793,194 -> 630,336
  (road location_27 location_26)
  ; 630,336 -> 793,194
  (road location_26 location_27)
  ; 793,194 -> 878,76
  (road location_27 location_4)
  ; 878,76 -> 793,194
  (road location_4 location_27)
  ; 166,870 -> 125,677
  (road location_3 location_31)
  ; 125,677 -> 166,870
  (road location_31 location_3)
  ; 166,870 -> 66,817
  (road location_3 location_56)
  ; 66,817 -> 166,870
  (road location_56 location_3)
  ; 833,827 -> 916,940
  (road location_39 location_53)
  ; 916,940 -> 833,827
  (road location_53 location_39)
  ; 833,827 -> 753,644
  (road location_39 location_10)
  ; 753,644 -> 833,827
  (road location_10 location_39)
  ; 41,918 -> 125,677
  (road location_36 location_31)
  ; 125,677 -> 41,918
  (road location_31 location_36)
  ; 41,918 -> 66,817
  (road location_36 location_56)
  ; 66,817 -> 41,918
  (road location_56 location_36)
  ; 41,918 -> 166,870
  (road location_36 location_3)
  ; 166,870 -> 41,918
  (road location_3 location_36)
  ; 2148,17 -> 2340,7
  (road location_33 location_25)
  ; 2340,7 -> 2148,17
  (road location_25 location_33)
  ; 2866,797 -> 2973,757
  (road location_49 location_38)
  ; 2973,757 -> 2866,797
  (road location_38 location_49)
  ; 2822,267 -> 2675,345
  (road location_37 location_0)
  ; 2675,345 -> 2822,267
  (road location_0 location_37)
  ; 2599,455 -> 2675,345
  (road location_59 location_0)
  ; 2675,345 -> 2599,455
  (road location_0 location_59)
  ; 2599,455 -> 2822,267
  (road location_59 location_37)
  ; 2822,267 -> 2599,455
  (road location_37 location_59)
  ; 2370,762 -> 2436,867
  (road location_52 location_2)
  ; 2436,867 -> 2370,762
  (road location_2 location_52)
  ; 2209,484 -> 2118,400
  (road location_14 location_44)
  ; 2118,400 -> 2209,484
  (road location_44 location_14)
  ; 2693,779 -> 2973,757
  (road location_45 location_38)
  ; 2973,757 -> 2693,779
  (road location_38 location_45)
  ; 2693,779 -> 2866,797
  (road location_45 location_49)
  ; 2866,797 -> 2693,779
  (road location_49 location_45)
  ; 2693,779 -> 2436,867
  (road location_45 location_2)
  ; 2436,867 -> 2693,779
  (road location_2 location_45)
  ; 2530,579 -> 2675,345
  (road location_20 location_0)
  ; 2675,345 -> 2530,579
  (road location_0 location_20)
  ; 2530,579 -> 2599,455
  (road location_20 location_59)
  ; 2599,455 -> 2530,579
  (road location_59 location_20)
  ; 2530,579 -> 2370,762
  (road location_20 location_52)
  ; 2370,762 -> 2530,579
  (road location_52 location_20)
  ; 2530,579 -> 2693,779
  (road location_20 location_45)
  ; 2693,779 -> 2530,579
  (road location_45 location_20)
  ; 2959,210 -> 2822,267
  (road location_13 location_37)
  ; 2822,267 -> 2959,210
  (road location_37 location_13)
  ; 2226,928 -> 2436,867
  (road location_55 location_2)
  ; 2436,867 -> 2226,928
  (road location_2 location_55)
  ; 2226,928 -> 2370,762
  (road location_55 location_52)
  ; 2370,762 -> 2226,928
  (road location_52 location_55)
  ; 2391,278 -> 2118,400
  (road location_47 location_44)
  ; 2118,400 -> 2391,278
  (road location_44 location_47)
  ; 2391,278 -> 2340,7
  (road location_47 location_25)
  ; 2340,7 -> 2391,278
  (road location_25 location_47)
  ; 2391,278 -> 2675,345
  (road location_47 location_0)
  ; 2675,345 -> 2391,278
  (road location_0 location_47)
  ; 2391,278 -> 2599,455
  (road location_47 location_59)
  ; 2599,455 -> 2391,278
  (road location_59 location_47)
  ; 2391,278 -> 2209,484
  (road location_47 location_14)
  ; 2209,484 -> 2391,278
  (road location_14 location_47)
  ; 2901,439 -> 2675,345
  (road location_23 location_0)
  ; 2675,345 -> 2901,439
  (road location_0 location_23)
  ; 2901,439 -> 2822,267
  (road location_23 location_37)
  ; 2822,267 -> 2901,439
  (road location_37 location_23)
  ; 2901,439 -> 2599,455
  (road location_23 location_59)
  ; 2599,455 -> 2901,439
  (road location_59 location_23)
  ; 2901,439 -> 2959,210
  (road location_23 location_13)
  ; 2959,210 -> 2901,439
  (road location_13 location_23)
  ; 2888,1 -> 2822,267
  (road location_12 location_37)
  ; 2822,267 -> 2888,1
  (road location_37 location_12)
  ; 2888,1 -> 2959,210
  (road location_12 location_13)
  ; 2959,210 -> 2888,1
  (road location_13 location_12)
  ; 2921,550 -> 2973,757
  (road location_50 location_38)
  ; 2973,757 -> 2921,550
  (road location_38 location_50)
  ; 2921,550 -> 2866,797
  (road location_50 location_49)
  ; 2866,797 -> 2921,550
  (road location_49 location_50)
  ; 2921,550 -> 2822,267
  (road location_50 location_37)
  ; 2822,267 -> 2921,550
  (road location_37 location_50)
  ; 2921,550 -> 2901,439
  (road location_50 location_23)
  ; 2901,439 -> 2921,550
  (road location_23 location_50)
  ; 2581,683 -> 2436,867
  (road location_22 location_2)
  ; 2436,867 -> 2581,683
  (road location_2 location_22)
  ; 2581,683 -> 2599,455
  (road location_22 location_59)
  ; 2599,455 -> 2581,683
  (road location_59 location_22)
  ; 2581,683 -> 2370,762
  (road location_22 location_52)
  ; 2370,762 -> 2581,683
  (road location_52 location_22)
  ; 2581,683 -> 2693,779
  (road location_22 location_45)
  ; 2693,779 -> 2581,683
  (road location_45 location_22)
  ; 2581,683 -> 2530,579
  (road location_22 location_20)
  ; 2530,579 -> 2581,683
  (road location_20 location_22)
  ; 1374,2777 -> 1220,2554
  (road location_8 location_40)
  ; 1220,2554 -> 1374,2777
  (road location_40 location_8)
  ; 1307,2925 -> 1374,2777
  (road location_30 location_8)
  ; 1374,2777 -> 1307,2925
  (road location_8 location_30)
  ; 1140,2736 -> 1220,2554
  (road location_6 location_40)
  ; 1220,2554 -> 1140,2736
  (road location_40 location_6)
  ; 1140,2736 -> 1374,2777
  (road location_6 location_8)
  ; 1374,2777 -> 1140,2736
  (road location_8 location_6)
  ; 1140,2736 -> 1307,2925
  (road location_6 location_30)
  ; 1307,2925 -> 1140,2736
  (road location_30 location_6)
  ; 1260,2356 -> 1220,2554
  (road location_51 location_40)
  ; 1220,2554 -> 1260,2356
  (road location_40 location_51)
  ; 1577,2848 -> 1374,2777
  (road location_54 location_8)
  ; 1374,2777 -> 1577,2848
  (road location_8 location_54)
  ; 1577,2848 -> 1307,2925
  (road location_54 location_30)
  ; 1307,2925 -> 1577,2848
  (road location_30 location_54)
  ; 1633,2694 -> 1374,2777
  (road location_18 location_8)
  ; 1374,2777 -> 1633,2694
  (road location_8 location_18)
  ; 1633,2694 -> 1577,2848
  (road location_18 location_54)
  ; 1577,2848 -> 1633,2694
  (road location_54 location_18)
  ; 1755,2326 -> 1619,2195
  (road location_1 location_29)
  ; 1619,2195 -> 1755,2326
  (road location_29 location_1)
  ; 1756,2712 -> 1577,2848
  (road location_35 location_54)
  ; 1577,2848 -> 1756,2712
  (road location_54 location_35)
  ; 1756,2712 -> 1633,2694
  (road location_35 location_18)
  ; 1633,2694 -> 1756,2712
  (road location_18 location_35)
  ; 1756,2712 -> 1983,2755
  (road location_35 location_58)
  ; 1983,2755 -> 1756,2712
  (road location_58 location_35)
  ; 1504,2342 -> 1260,2356
  (road location_24 location_51)
  ; 1260,2356 -> 1504,2342
  (road location_51 location_24)
  ; 1504,2342 -> 1619,2195
  (road location_24 location_29)
  ; 1619,2195 -> 1504,2342
  (road location_29 location_24)
  ; 1504,2342 -> 1755,2326
  (road location_24 location_1)
  ; 1755,2326 -> 1504,2342
  (road location_1 location_24)
  ; 1134,2151 -> 1260,2356
  (road location_48 location_51)
  ; 1260,2356 -> 1134,2151
  (road location_51 location_48)
  ; 1651,2991 -> 1577,2848
  (road location_57 location_54)
  ; 1577,2848 -> 1651,2991
  (road location_54 location_57)
  ; 1651,2991 -> 1633,2694
  (road location_57 location_18)
  ; 1633,2694 -> 1651,2991
  (road location_18 location_57)
  ; 1651,2991 -> 1756,2712
  (road location_57 location_35)
  ; 1756,2712 -> 1651,2991
  (road location_35 location_57)
  ; 1822,2842 -> 1577,2848
  (road location_16 location_54)
  ; 1577,2848 -> 1822,2842
  (road location_54 location_16)
  ; 1822,2842 -> 1633,2694
  (road location_16 location_18)
  ; 1633,2694 -> 1822,2842
  (road location_18 location_16)
  ; 1822,2842 -> 1983,2755
  (road location_16 location_58)
  ; 1983,2755 -> 1822,2842
  (road location_58 location_16)
  ; 1822,2842 -> 1756,2712
  (road location_16 location_35)
  ; 1756,2712 -> 1822,2842
  (road location_35 location_16)
  ; 1822,2842 -> 1651,2991
  (road location_16 location_57)
  ; 1651,2991 -> 1822,2842
  (road location_57 location_16)
  ; 1864,2302 -> 1619,2195
  (road location_11 location_29)
  ; 1619,2195 -> 1864,2302
  (road location_29 location_11)
  ; 1864,2302 -> 1755,2326
  (road location_11 location_1)
  ; 1755,2326 -> 1864,2302
  (road location_1 location_11)
  ; 1847,2622 -> 1633,2694
  (road location_42 location_18)
  ; 1633,2694 -> 1847,2622
  (road location_18 location_42)
  ; 1847,2622 -> 1983,2755
  (road location_42 location_58)
  ; 1983,2755 -> 1847,2622
  (road location_58 location_42)
  ; 1847,2622 -> 1756,2712
  (road location_42 location_35)
  ; 1756,2712 -> 1847,2622
  (road location_35 location_42)
  ; 1847,2622 -> 1822,2842
  (road location_42 location_16)
  ; 1822,2842 -> 1847,2622
  (road location_16 location_42)
  ; 1070,2845 -> 1307,2925
  (road location_41 location_30)
  ; 1307,2925 -> 1070,2845
  (road location_30 location_41)
  ; 1070,2845 -> 1140,2736
  (road location_41 location_6)
  ; 1140,2736 -> 1070,2845
  (road location_6 location_41)
  ; 1291,2215 -> 1260,2356
  (road location_15 location_51)
  ; 1260,2356 -> 1291,2215
  (road location_51 location_15)
  ; 1291,2215 -> 1504,2342
  (road location_15 location_24)
  ; 1504,2342 -> 1291,2215
  (road location_24 location_15)
  ; 1291,2215 -> 1134,2151
  (road location_15 location_48)
  ; 1134,2151 -> 1291,2215
  (road location_48 location_15)
  ; 1787,2079 -> 1619,2195
  (road location_9 location_29)
  ; 1619,2195 -> 1787,2079
  (road location_29 location_9)
  ; 1787,2079 -> 1755,2326
  (road location_9 location_1)
  ; 1755,2326 -> 1787,2079
  (road location_1 location_9)
  ; 1787,2079 -> 1864,2302
  (road location_9 location_11)
  ; 1864,2302 -> 1787,2079
  (road location_11 location_9)
  ; 973,444 <-> 2118,400
  (road location_34 location_44)
  (road location_44 location_34)
  (road location_34 location_40)
  (road location_40 location_34)
  (road location_23 location_16)
  (road location_16 location_23)
  (at package_3 location_29)
  (at package_2 location_25)
  (at package_1 location_43)
  (at package_0 location_26)
  (at package_4 location_25)
  (at package_5 location_52)
  (at vehicle_0 location_7)
  (capacity vehicle_0 capacity-number_2)
  (at vehicle_2 location_57)
  (capacity vehicle_2 capacity-number_4)
  (at vehicle_1 location_5)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_3 location_10)
  (at package_2 location_33)
  (at package_1 location_23)
  (at package_0 location_43)
  (at package_4 location_7)
  (at package_5 location_31)
 ))
 
)
