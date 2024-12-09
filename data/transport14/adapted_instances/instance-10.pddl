; transport two-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed

(define (problem transport-two-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_20 - location
  location_17 - location
  location_6 - location
  location_22 - location
  location_18 - location
  location_29 - location
  location_11 - location
  location_28 - location
  location_25 - location
  location_0 - location
  location_8 - location
  location_16 - location
  location_9 - location
  location_13 - location
  location_10 - location
  location_21 - location
  location_7 - location
  location_3 - location
  location_4 - location
  location_2 - location
  location_5 - location
  location_19 - location
  location_1 - location
  location_23 - location
  location_12 - location
  location_27 - location
  location_14 - location
  location_24 - location
  location_26 - location
  location_15 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_1 - package
  package_2 - package
  package_0 - package
  package_3 - package
  package_4 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  ; 599,455 -> 822,267
  (road location_25 location_6)
  ; 822,267 -> 599,455
  (road location_6 location_25)
  ; 727,302 -> 822,267
  (road location_8 location_6)
  ; 822,267 -> 727,302
  (road location_6 location_8)
  ; 727,302 -> 599,455
  (road location_8 location_25)
  ; 599,455 -> 727,302
  (road location_25 location_8)
  ; 370,762 -> 436,867
  (road location_9 location_20)
  ; 436,867 -> 370,762
  (road location_20 location_9)
  ; 693,779 -> 436,867
  (road location_7 location_20)
  ; 436,867 -> 693,779
  (road location_20 location_7)
  ; 693,779 -> 971,828
  (road location_7 location_18)
  ; 971,828 -> 693,779
  (road location_18 location_7)
  ; 530,579 -> 599,455
  (road location_4 location_25)
  ; 599,455 -> 530,579
  (road location_25 location_4)
  ; 530,579 -> 370,762
  (road location_4 location_9)
  ; 370,762 -> 530,579
  (road location_9 location_4)
  ; 530,579 -> 693,779
  (road location_4 location_7)
  ; 693,779 -> 530,579
  (road location_7 location_4)
  ; 959,210 -> 822,267
  (road location_5 location_6)
  ; 822,267 -> 959,210
  (road location_6 location_5)
  ; 959,210 -> 727,302
  (road location_5 location_8)
  ; 727,302 -> 959,210
  (road location_8 location_5)
  ; 226,928 -> 436,867
  (road location_1 location_20)
  ; 436,867 -> 226,928
  (road location_20 location_1)
  ; 226,928 -> 370,762
  (road location_1 location_9)
  ; 370,762 -> 226,928
  (road location_9 location_1)
  ; 391,278 -> 314,94
  (road location_12 location_11)
  ; 314,94 -> 391,278
  (road location_11 location_12)
  ; 391,278 -> 599,455
  (road location_12 location_25)
  ; 599,455 -> 391,278
  (road location_25 location_12)
  ; 391,278 -> 209,484
  (road location_12 location_10)
  ; 209,484 -> 391,278
  (road location_10 location_12)
  ; 864,742 -> 971,828
  (road location_14 location_18)
  ; 971,828 -> 864,742
  (road location_18 location_14)
  ; 864,742 -> 693,779
  (road location_14 location_7)
  ; 693,779 -> 864,742
  (road location_7 location_14)
  ; 901,439 -> 822,267
  (road location_26 location_6)
  ; 822,267 -> 901,439
  (road location_6 location_26)
  ; 901,439 -> 599,455
  (road location_26 location_25)
  ; 599,455 -> 901,439
  (road location_25 location_26)
  ; 901,439 -> 727,302
  (road location_26 location_8)
  ; 727,302 -> 901,439
  (road location_8 location_26)
  ; 901,439 -> 959,210
  (road location_26 location_5)
  ; 959,210 -> 901,439
  (road location_5 location_26)
  ; 2409,292 -> 2225,426
  (road location_29 location_17)
  ; 2225,426 -> 2409,292
  (road location_17 location_29)
  ; 2567,57 -> 2409,292
  (road location_28 location_29)
  ; 2409,292 -> 2567,57
  (road location_29 location_28)
  ; 2454,969 -> 2665,994
  (road location_21 location_16)
  ; 2665,994 -> 2454,969
  (road location_16 location_21)
  ; 2825,489 -> 2843,303
  (road location_3 location_22)
  ; 2843,303 -> 2825,489
  (road location_22 location_3)
  ; 2825,489 -> 2704,582
  (road location_3 location_13)
  ; 2704,582 -> 2825,489
  (road location_13 location_3)
  ; 2992,559 -> 2843,303
  (road location_2 location_22)
  ; 2843,303 -> 2992,559
  (road location_22 location_2)
  ; 2992,559 -> 2704,582
  (road location_2 location_13)
  ; 2704,582 -> 2992,559
  (road location_13 location_2)
  ; 2992,559 -> 2825,489
  (road location_2 location_3)
  ; 2825,489 -> 2992,559
  (road location_3 location_2)
  ; 2677,826 -> 2665,994
  (road location_19 location_16)
  ; 2665,994 -> 2677,826
  (road location_16 location_19)
  ; 2677,826 -> 2704,582
  (road location_19 location_13)
  ; 2704,582 -> 2677,826
  (road location_13 location_19)
  ; 2677,826 -> 2454,969
  (road location_19 location_21)
  ; 2454,969 -> 2677,826
  (road location_21 location_19)
  ; 2906,406 -> 2843,303
  (road location_23 location_22)
  ; 2843,303 -> 2906,406
  (road location_22 location_23)
  ; 2906,406 -> 2704,582
  (road location_23 location_13)
  ; 2704,582 -> 2906,406
  (road location_13 location_23)
  ; 2906,406 -> 2825,489
  (road location_23 location_3)
  ; 2825,489 -> 2906,406
  (road location_3 location_23)
  ; 2906,406 -> 2992,559
  (road location_23 location_2)
  ; 2992,559 -> 2906,406
  (road location_2 location_23)
  ; 2425,577 -> 2225,426
  (road location_27 location_17)
  ; 2225,426 -> 2425,577
  (road location_17 location_27)
  ; 2425,577 -> 2409,292
  (road location_27 location_29)
  ; 2409,292 -> 2425,577
  (road location_29 location_27)
  ; 2425,577 -> 2232,740
  (road location_27 location_0)
  ; 2232,740 -> 2425,577
  (road location_0 location_27)
  ; 2425,577 -> 2704,582
  (road location_27 location_13)
  ; 2704,582 -> 2425,577
  (road location_13 location_27)
  ; 2555,900 -> 2665,994
  (road location_24 location_16)
  ; 2665,994 -> 2555,900
  (road location_16 location_24)
  ; 2555,900 -> 2454,969
  (road location_24 location_21)
  ; 2454,969 -> 2555,900
  (road location_21 location_24)
  ; 2555,900 -> 2677,826
  (road location_24 location_19)
  ; 2677,826 -> 2555,900
  (road location_19 location_24)
  ; 2713,155 -> 2843,303
  (road location_15 location_22)
  ; 2843,303 -> 2713,155
  (road location_22 location_15)
  ; 2713,155 -> 2567,57
  (road location_15 location_28)
  ; 2567,57 -> 2713,155
  (road location_28 location_15)
  ; 971,828 <-> 2232,740
  (road location_18 location_0)
  (road location_0 location_18)
  (at package_1 location_7)
  (at package_2 location_5)
  (at package_0 location_1)
  (at package_3 location_10)
  (at package_4 location_5)
  (at vehicle_0 location_13)
  (capacity vehicle_0 capacity-number_4)
  (at vehicle_2 location_3)
  (capacity vehicle_2 capacity-number_2)
  (at vehicle_1 location_0)
  (capacity vehicle_1 capacity-number_4)
 )
 (:goal (and
  (at package_1 location_21)
  (at package_2 location_27)
  (at package_0 location_29)
  (at package_3 location_23)
  (at package_4 location_13)
 ))
 
)
