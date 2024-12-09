; transport three-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed

(define (problem transport-three-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_33 - location
  location_43 - location
  location_23 - location
  location_30 - location
  location_40 - location
  location_19 - location
  location_4 - location
  location_16 - location
  location_29 - location
  location_42 - location
  location_39 - location
  location_17 - location
  location_41 - location
  location_9 - location
  location_32 - location
  location_15 - location
  location_2 - location
  location_31 - location
  location_5 - location
  location_38 - location
  location_44 - location
  location_3 - location
  location_26 - location
  location_27 - location
  location_0 - location
  location_8 - location
  location_28 - location
  location_7 - location
  location_18 - location
  location_21 - location
  location_12 - location
  location_37 - location
  location_36 - location
  location_24 - location
  location_6 - location
  location_13 - location
  location_25 - location
  location_1 - location
  location_14 - location
  location_20 - location
  location_10 - location
  location_22 - location
  location_35 - location
  location_11 - location
  location_34 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  package_3 - package
  package_1 - package
  package_0 - package
  package_4 - package
  package_2 - package
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  ; 599,455 -> 822,267
  (road location_41 location_30)
  ; 822,267 -> 599,455
  (road location_30 location_41)
  ; 727,302 -> 822,267
  (road location_15 location_30)
  ; 822,267 -> 727,302
  (road location_30 location_15)
  ; 727,302 -> 599,455
  (road location_15 location_41)
  ; 599,455 -> 727,302
  (road location_41 location_15)
  ; 370,762 -> 436,867
  (road location_5 location_33)
  ; 436,867 -> 370,762
  (road location_33 location_5)
  ; 693,779 -> 436,867
  (road location_0 location_33)
  ; 436,867 -> 693,779
  (road location_33 location_0)
  ; 693,779 -> 971,828
  (road location_0 location_4)
  ; 971,828 -> 693,779
  (road location_4 location_0)
  ; 530,579 -> 599,455
  (road location_7 location_41)
  ; 599,455 -> 530,579
  (road location_41 location_7)
  ; 530,579 -> 370,762
  (road location_7 location_5)
  ; 370,762 -> 530,579
  (road location_5 location_7)
  ; 530,579 -> 693,779
  (road location_7 location_0)
  ; 693,779 -> 530,579
  (road location_0 location_7)
  ; 959,210 -> 822,267
  (road location_12 location_30)
  ; 822,267 -> 959,210
  (road location_30 location_12)
  ; 959,210 -> 727,302
  (road location_12 location_15)
  ; 727,302 -> 959,210
  (road location_15 location_12)
  ; 226,928 -> 436,867
  (road location_24 location_33)
  ; 436,867 -> 226,928
  (road location_33 location_24)
  ; 226,928 -> 370,762
  (road location_24 location_5)
  ; 370,762 -> 226,928
  (road location_5 location_24)
  ; 391,278 -> 314,94
  (road location_25 location_42)
  ; 314,94 -> 391,278
  (road location_42 location_25)
  ; 391,278 -> 599,455
  (road location_25 location_41)
  ; 599,455 -> 391,278
  (road location_41 location_25)
  ; 391,278 -> 209,484
  (road location_25 location_3)
  ; 209,484 -> 391,278
  (road location_3 location_25)
  ; 864,742 -> 971,828
  (road location_20 location_4)
  ; 971,828 -> 864,742
  (road location_4 location_20)
  ; 864,742 -> 693,779
  (road location_20 location_0)
  ; 693,779 -> 864,742
  (road location_0 location_20)
  ; 901,439 -> 822,267
  (road location_35 location_30)
  ; 822,267 -> 901,439
  (road location_30 location_35)
  ; 901,439 -> 599,455
  (road location_35 location_41)
  ; 599,455 -> 901,439
  (road location_41 location_35)
  ; 901,439 -> 727,302
  (road location_35 location_15)
  ; 727,302 -> 901,439
  (road location_15 location_35)
  ; 901,439 -> 959,210
  (road location_35 location_12)
  ; 959,210 -> 901,439
  (road location_12 location_35)
  ; 2409,292 -> 2225,426
  (road location_16 location_43)
  ; 2225,426 -> 2409,292
  (road location_43 location_16)
  ; 2567,57 -> 2409,292
  (road location_39 location_16)
  ; 2409,292 -> 2567,57
  (road location_16 location_39)
  ; 2454,969 -> 2665,994
  (road location_26 location_2)
  ; 2665,994 -> 2454,969
  (road location_2 location_26)
  ; 2825,489 -> 2843,303
  (road location_8 location_40)
  ; 2843,303 -> 2825,489
  (road location_40 location_8)
  ; 2825,489 -> 2704,582
  (road location_8 location_38)
  ; 2704,582 -> 2825,489
  (road location_38 location_8)
  ; 2992,559 -> 2843,303
  (road location_18 location_40)
  ; 2843,303 -> 2992,559
  (road location_40 location_18)
  ; 2992,559 -> 2704,582
  (road location_18 location_38)
  ; 2704,582 -> 2992,559
  (road location_38 location_18)
  ; 2992,559 -> 2825,489
  (road location_18 location_8)
  ; 2825,489 -> 2992,559
  (road location_8 location_18)
  ; 2677,826 -> 2665,994
  (road location_37 location_2)
  ; 2665,994 -> 2677,826
  (road location_2 location_37)
  ; 2677,826 -> 2704,582
  (road location_37 location_38)
  ; 2704,582 -> 2677,826
  (road location_38 location_37)
  ; 2677,826 -> 2454,969
  (road location_37 location_26)
  ; 2454,969 -> 2677,826
  (road location_26 location_37)
  ; 2906,406 -> 2843,303
  (road location_6 location_40)
  ; 2843,303 -> 2906,406
  (road location_40 location_6)
  ; 2906,406 -> 2704,582
  (road location_6 location_38)
  ; 2704,582 -> 2906,406
  (road location_38 location_6)
  ; 2906,406 -> 2825,489
  (road location_6 location_8)
  ; 2825,489 -> 2906,406
  (road location_8 location_6)
  ; 2906,406 -> 2992,559
  (road location_6 location_18)
  ; 2992,559 -> 2906,406
  (road location_18 location_6)
  ; 2425,577 -> 2225,426
  (road location_1 location_43)
  ; 2225,426 -> 2425,577
  (road location_43 location_1)
  ; 2425,577 -> 2409,292
  (road location_1 location_16)
  ; 2409,292 -> 2425,577
  (road location_16 location_1)
  ; 2425,577 -> 2232,740
  (road location_1 location_9)
  ; 2232,740 -> 2425,577
  (road location_9 location_1)
  ; 2425,577 -> 2704,582
  (road location_1 location_38)
  ; 2704,582 -> 2425,577
  (road location_38 location_1)
  ; 2555,900 -> 2665,994
  (road location_10 location_2)
  ; 2665,994 -> 2555,900
  (road location_2 location_10)
  ; 2555,900 -> 2454,969
  (road location_10 location_26)
  ; 2454,969 -> 2555,900
  (road location_26 location_10)
  ; 2555,900 -> 2677,826
  (road location_10 location_37)
  ; 2677,826 -> 2555,900
  (road location_37 location_10)
  ; 2713,155 -> 2843,303
  (road location_11 location_40)
  ; 2843,303 -> 2713,155
  (road location_40 location_11)
  ; 2713,155 -> 2567,57
  (road location_11 location_39)
  ; 2567,57 -> 2713,155
  (road location_39 location_11)
  ; 1648,2069 -> 1648,2259
  (road location_29 location_19)
  ; 1648,2259 -> 1648,2069
  (road location_19 location_29)
  ; 1691,2373 -> 1648,2259
  (road location_32 location_19)
  ; 1648,2259 -> 1691,2373
  (road location_19 location_32)
  ; 1691,2373 -> 1551,2569
  (road location_32 location_17)
  ; 1551,2569 -> 1691,2373
  (road location_17 location_32)
  ; 1488,2415 -> 1648,2259
  (road location_44 location_19)
  ; 1648,2259 -> 1488,2415
  (road location_19 location_44)
  ; 1488,2415 -> 1551,2569
  (road location_44 location_17)
  ; 1551,2569 -> 1488,2415
  (road location_17 location_44)
  ; 1488,2415 -> 1691,2373
  (road location_44 location_32)
  ; 1691,2373 -> 1488,2415
  (road location_32 location_44)
  ; 1772,2920 -> 1982,2918
  (road location_27 location_23)
  ; 1982,2918 -> 1772,2920
  (road location_23 location_27)
  ; 1424,2654 -> 1551,2569
  (road location_28 location_17)
  ; 1551,2569 -> 1424,2654
  (road location_17 location_28)
  ; 1424,2654 -> 1176,2754
  (road location_28 location_31)
  ; 1176,2754 -> 1424,2654
  (road location_31 location_28)
  ; 1424,2654 -> 1488,2415
  (road location_28 location_44)
  ; 1488,2415 -> 1424,2654
  (road location_44 location_28)
  ; 1678,2967 -> 1772,2920
  (road location_21 location_27)
  ; 1772,2920 -> 1678,2967
  (road location_27 location_21)
  ; 1171,2465 -> 1176,2754
  (road location_36 location_31)
  ; 1176,2754 -> 1171,2465
  (road location_31 location_36)
  ; 1282,2571 -> 1551,2569
  (road location_13 location_17)
  ; 1551,2569 -> 1282,2571
  (road location_17 location_13)
  ; 1282,2571 -> 1176,2754
  (road location_13 location_31)
  ; 1176,2754 -> 1282,2571
  (road location_31 location_13)
  ; 1282,2571 -> 1488,2415
  (road location_13 location_44)
  ; 1488,2415 -> 1282,2571
  (road location_44 location_13)
  ; 1282,2571 -> 1424,2654
  (road location_13 location_28)
  ; 1424,2654 -> 1282,2571
  (road location_28 location_13)
  ; 1282,2571 -> 1171,2465
  (road location_13 location_36)
  ; 1171,2465 -> 1282,2571
  (road location_36 location_13)
  ; 1289,2200 -> 1488,2415
  (road location_14 location_44)
  ; 1488,2415 -> 1289,2200
  (road location_44 location_14)
  ; 1289,2200 -> 1171,2465
  (road location_14 location_36)
  ; 1171,2465 -> 1289,2200
  (road location_36 location_14)
  ; 1617,2662 -> 1551,2569
  (road location_22 location_17)
  ; 1551,2569 -> 1617,2662
  (road location_17 location_22)
  ; 1617,2662 -> 1691,2373
  (road location_22 location_32)
  ; 1691,2373 -> 1617,2662
  (road location_32 location_22)
  ; 1617,2662 -> 1488,2415
  (road location_22 location_44)
  ; 1488,2415 -> 1617,2662
  (road location_44 location_22)
  ; 1617,2662 -> 1772,2920
  (road location_22 location_27)
  ; 1772,2920 -> 1617,2662
  (road location_27 location_22)
  ; 1617,2662 -> 1424,2654
  (road location_22 location_28)
  ; 1424,2654 -> 1617,2662
  (road location_28 location_22)
  ; 1232,2911 -> 1176,2754
  (road location_34 location_31)
  ; 1176,2754 -> 1232,2911
  (road location_31 location_34)
  ; 971,828 <-> 2232,740
  (road location_4 location_9)
  (road location_9 location_4)
  (road location_4 location_23)
  (road location_23 location_4)
  (road location_37 location_23)
  (road location_23 location_37)
  (at package_3 location_14)
  (at package_1 location_30)
  (at package_0 location_1)
  (at package_4 location_41)
  (at package_2 location_4)
  (at vehicle_1 location_28)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_0 location_23)
  (capacity vehicle_0 capacity-number_2)
  (at vehicle_2 location_30)
  (capacity vehicle_2 capacity-number_0)
 )
 (:goal (and
  (at package_3 location_1)
  (at package_1 location_18)
  (at package_0 location_37)
  (at package_4 location_18)
  (at package_2 location_32)
 ))
 
)
