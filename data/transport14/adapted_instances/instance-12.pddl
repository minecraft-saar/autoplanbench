; transport two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_16 - location
  location_37 - location
  location_24 - location
  location_29 - location
  location_26 - location
  location_25 - location
  location_10 - location
  location_22 - location
  location_2 - location
  location_3 - location
  location_39 - location
  location_17 - location
  location_0 - location
  location_31 - location
  location_21 - location
  location_19 - location
  location_34 - location
  location_13 - location
  location_15 - location
  location_14 - location
  location_30 - location
  location_1 - location
  location_11 - location
  location_18 - location
  location_4 - location
  location_27 - location
  location_6 - location
  location_20 - location
  location_8 - location
  location_33 - location
  location_23 - location
  location_36 - location
  location_12 - location
  location_5 - location
  location_38 - location
  location_32 - location
  location_9 - location
  location_28 - location
  location_35 - location
  location_7 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_4 - package
  package_3 - package
  package_1 - package
  package_2 - package
  package_5 - package
  package_0 - package
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_1)
  ; 22,400 -> 315,398
  (road location_10 location_16)
  ; 315,398 -> 22,400
  (road location_16 location_10)
  ; 125,677 -> 427,691
  (road location_2 location_26)
  ; 427,691 -> 125,677
  (road location_26 location_2)
  ; 125,677 -> 22,400
  (road location_2 location_10)
  ; 22,400 -> 125,677
  (road location_10 location_2)
  ; 471,258 -> 315,398
  (road location_0 location_16)
  ; 315,398 -> 471,258
  (road location_16 location_0)
  ; 92,243 -> 315,398
  (road location_21 location_16)
  ; 315,398 -> 92,243
  (road location_16 location_21)
  ; 92,243 -> 22,400
  (road location_21 location_10)
  ; 22,400 -> 92,243
  (road location_10 location_21)
  ; 227,260 -> 315,398
  (road location_34 location_16)
  ; 315,398 -> 227,260
  (road location_16 location_34)
  ; 227,260 -> 22,400
  (road location_34 location_10)
  ; 22,400 -> 227,260
  (road location_10 location_34)
  ; 227,260 -> 471,258
  (road location_34 location_0)
  ; 471,258 -> 227,260
  (road location_0 location_34)
  ; 227,260 -> 92,243
  (road location_34 location_21)
  ; 92,243 -> 227,260
  (road location_21 location_34)
  ; 680,79 -> 471,258
  (road location_15 location_0)
  ; 471,258 -> 680,79
  (road location_0 location_15)
  ; 753,644 -> 973,444
  (road location_30 location_39)
  ; 973,444 -> 753,644
  (road location_39 location_30)
  ; 688,479 -> 973,444
  (road location_11 location_39)
  ; 973,444 -> 688,479
  (road location_39 location_11)
  ; 688,479 -> 753,644
  (road location_11 location_30)
  ; 753,644 -> 688,479
  (road location_30 location_11)
  ; 197,108 -> 92,243
  (road location_4 location_21)
  ; 92,243 -> 197,108
  (road location_21 location_4)
  ; 197,108 -> 227,260
  (road location_4 location_34)
  ; 227,260 -> 197,108
  (road location_34 location_4)
  ; 630,336 -> 471,258
  (road location_6 location_0)
  ; 471,258 -> 630,336
  (road location_0 location_6)
  ; 630,336 -> 680,79
  (road location_6 location_15)
  ; 680,79 -> 630,336
  (road location_15 location_6)
  ; 630,336 -> 688,479
  (road location_6 location_11)
  ; 688,479 -> 630,336
  (road location_11 location_6)
  ; 66,817 -> 125,677
  (road location_8 location_2)
  ; 125,677 -> 66,817
  (road location_2 location_8)
  ; 878,76 -> 680,79
  (road location_23 location_15)
  ; 680,79 -> 878,76
  (road location_15 location_23)
  ; 793,194 -> 680,79
  (road location_12 location_15)
  ; 680,79 -> 793,194
  (road location_15 location_12)
  ; 793,194 -> 630,336
  (road location_12 location_6)
  ; 630,336 -> 793,194
  (road location_6 location_12)
  ; 793,194 -> 878,76
  (road location_12 location_23)
  ; 878,76 -> 793,194
  (road location_23 location_12)
  ; 166,870 -> 125,677
  (road location_38 location_2)
  ; 125,677 -> 166,870
  (road location_2 location_38)
  ; 166,870 -> 66,817
  (road location_38 location_8)
  ; 66,817 -> 166,870
  (road location_8 location_38)
  ; 833,827 -> 916,940
  (road location_9 location_24)
  ; 916,940 -> 833,827
  (road location_24 location_9)
  ; 833,827 -> 753,644
  (road location_9 location_30)
  ; 753,644 -> 833,827
  (road location_30 location_9)
  ; 41,918 -> 125,677
  (road location_35 location_2)
  ; 125,677 -> 41,918
  (road location_2 location_35)
  ; 41,918 -> 66,817
  (road location_35 location_8)
  ; 66,817 -> 41,918
  (road location_8 location_35)
  ; 41,918 -> 166,870
  (road location_35 location_38)
  ; 166,870 -> 41,918
  (road location_38 location_35)
  ; 2148,17 -> 2340,7
  (road location_3 location_29)
  ; 2340,7 -> 2148,17
  (road location_29 location_3)
  ; 2866,797 -> 2973,757
  (road location_17 location_22)
  ; 2973,757 -> 2866,797
  (road location_22 location_17)
  ; 2822,267 -> 2675,345
  (road location_19 location_25)
  ; 2675,345 -> 2822,267
  (road location_25 location_19)
  ; 2599,455 -> 2675,345
  (road location_13 location_25)
  ; 2675,345 -> 2599,455
  (road location_25 location_13)
  ; 2599,455 -> 2822,267
  (road location_13 location_19)
  ; 2822,267 -> 2599,455
  (road location_19 location_13)
  ; 2370,762 -> 2436,867
  (road location_14 location_31)
  ; 2436,867 -> 2370,762
  (road location_31 location_14)
  ; 2209,484 -> 2118,400
  (road location_1 location_37)
  ; 2118,400 -> 2209,484
  (road location_37 location_1)
  ; 2693,779 -> 2973,757
  (road location_18 location_22)
  ; 2973,757 -> 2693,779
  (road location_22 location_18)
  ; 2693,779 -> 2866,797
  (road location_18 location_17)
  ; 2866,797 -> 2693,779
  (road location_17 location_18)
  ; 2693,779 -> 2436,867
  (road location_18 location_31)
  ; 2436,867 -> 2693,779
  (road location_31 location_18)
  ; 2530,579 -> 2675,345
  (road location_27 location_25)
  ; 2675,345 -> 2530,579
  (road location_25 location_27)
  ; 2530,579 -> 2599,455
  (road location_27 location_13)
  ; 2599,455 -> 2530,579
  (road location_13 location_27)
  ; 2530,579 -> 2370,762
  (road location_27 location_14)
  ; 2370,762 -> 2530,579
  (road location_14 location_27)
  ; 2530,579 -> 2693,779
  (road location_27 location_18)
  ; 2693,779 -> 2530,579
  (road location_18 location_27)
  ; 2959,210 -> 2822,267
  (road location_20 location_19)
  ; 2822,267 -> 2959,210
  (road location_19 location_20)
  ; 2226,928 -> 2436,867
  (road location_33 location_31)
  ; 2436,867 -> 2226,928
  (road location_31 location_33)
  ; 2226,928 -> 2370,762
  (road location_33 location_14)
  ; 2370,762 -> 2226,928
  (road location_14 location_33)
  ; 2391,278 -> 2118,400
  (road location_36 location_37)
  ; 2118,400 -> 2391,278
  (road location_37 location_36)
  ; 2391,278 -> 2340,7
  (road location_36 location_29)
  ; 2340,7 -> 2391,278
  (road location_29 location_36)
  ; 2391,278 -> 2675,345
  (road location_36 location_25)
  ; 2675,345 -> 2391,278
  (road location_25 location_36)
  ; 2391,278 -> 2599,455
  (road location_36 location_13)
  ; 2599,455 -> 2391,278
  (road location_13 location_36)
  ; 2391,278 -> 2209,484
  (road location_36 location_1)
  ; 2209,484 -> 2391,278
  (road location_1 location_36)
  ; 2901,439 -> 2675,345
  (road location_5 location_25)
  ; 2675,345 -> 2901,439
  (road location_25 location_5)
  ; 2901,439 -> 2822,267
  (road location_5 location_19)
  ; 2822,267 -> 2901,439
  (road location_19 location_5)
  ; 2901,439 -> 2599,455
  (road location_5 location_13)
  ; 2599,455 -> 2901,439
  (road location_13 location_5)
  ; 2901,439 -> 2959,210
  (road location_5 location_20)
  ; 2959,210 -> 2901,439
  (road location_20 location_5)
  ; 2888,1 -> 2822,267
  (road location_32 location_19)
  ; 2822,267 -> 2888,1
  (road location_19 location_32)
  ; 2888,1 -> 2959,210
  (road location_32 location_20)
  ; 2959,210 -> 2888,1
  (road location_20 location_32)
  ; 2921,550 -> 2973,757
  (road location_28 location_22)
  ; 2973,757 -> 2921,550
  (road location_22 location_28)
  ; 2921,550 -> 2866,797
  (road location_28 location_17)
  ; 2866,797 -> 2921,550
  (road location_17 location_28)
  ; 2921,550 -> 2822,267
  (road location_28 location_19)
  ; 2822,267 -> 2921,550
  (road location_19 location_28)
  ; 2921,550 -> 2901,439
  (road location_28 location_5)
  ; 2901,439 -> 2921,550
  (road location_5 location_28)
  ; 2581,683 -> 2436,867
  (road location_7 location_31)
  ; 2436,867 -> 2581,683
  (road location_31 location_7)
  ; 2581,683 -> 2599,455
  (road location_7 location_13)
  ; 2599,455 -> 2581,683
  (road location_13 location_7)
  ; 2581,683 -> 2370,762
  (road location_7 location_14)
  ; 2370,762 -> 2581,683
  (road location_14 location_7)
  ; 2581,683 -> 2693,779
  (road location_7 location_18)
  ; 2693,779 -> 2581,683
  (road location_18 location_7)
  ; 2581,683 -> 2530,579
  (road location_7 location_27)
  ; 2530,579 -> 2581,683
  (road location_27 location_7)
  ; 973,444 <-> 2118,400
  (road location_39 location_37)
  (road location_37 location_39)
  (at package_4 location_4)
  (at package_3 location_0)
  (at package_1 location_23)
  (at package_2 location_11)
  (at package_5 location_38)
  (at package_0 location_35)
  (at vehicle_0 location_7)
  (capacity vehicle_0 capacity-number_1)
  (at vehicle_2 location_28)
  (capacity vehicle_2 capacity-number_3)
  (at vehicle_1 location_36)
  (capacity vehicle_1 capacity-number_3)
 )
 (:goal (and
  (at package_4 location_3)
  (at package_3 location_14)
  (at package_1 location_13)
  (at package_2 location_18)
  (at package_5 location_25)
  (at package_0 location_20)
 ))
 
)
