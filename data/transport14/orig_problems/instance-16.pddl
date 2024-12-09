; Transport three-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed

(define (problem transport-three-cities-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
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
  ; 599,455 -> 822,267
  (road city-1-loc-5 city-1-loc-2)
  ; 822,267 -> 599,455
  (road city-1-loc-2 city-1-loc-5)
  ; 727,302 -> 822,267
  (road city-1-loc-6 city-1-loc-2)
  ; 822,267 -> 727,302
  (road city-1-loc-2 city-1-loc-6)
  ; 727,302 -> 599,455
  (road city-1-loc-6 city-1-loc-5)
  ; 599,455 -> 727,302
  (road city-1-loc-5 city-1-loc-6)
  ; 370,762 -> 436,867
  (road city-1-loc-7 city-1-loc-1)
  ; 436,867 -> 370,762
  (road city-1-loc-1 city-1-loc-7)
  ; 693,779 -> 436,867
  (road city-1-loc-9 city-1-loc-1)
  ; 436,867 -> 693,779
  (road city-1-loc-1 city-1-loc-9)
  ; 693,779 -> 971,828
  (road city-1-loc-9 city-1-loc-3)
  ; 971,828 -> 693,779
  (road city-1-loc-3 city-1-loc-9)
  ; 530,579 -> 599,455
  (road city-1-loc-10 city-1-loc-5)
  ; 599,455 -> 530,579
  (road city-1-loc-5 city-1-loc-10)
  ; 530,579 -> 370,762
  (road city-1-loc-10 city-1-loc-7)
  ; 370,762 -> 530,579
  (road city-1-loc-7 city-1-loc-10)
  ; 530,579 -> 693,779
  (road city-1-loc-10 city-1-loc-9)
  ; 693,779 -> 530,579
  (road city-1-loc-9 city-1-loc-10)
  ; 959,210 -> 822,267
  (road city-1-loc-11 city-1-loc-2)
  ; 822,267 -> 959,210
  (road city-1-loc-2 city-1-loc-11)
  ; 959,210 -> 727,302
  (road city-1-loc-11 city-1-loc-6)
  ; 727,302 -> 959,210
  (road city-1-loc-6 city-1-loc-11)
  ; 226,928 -> 436,867
  (road city-1-loc-12 city-1-loc-1)
  ; 436,867 -> 226,928
  (road city-1-loc-1 city-1-loc-12)
  ; 226,928 -> 370,762
  (road city-1-loc-12 city-1-loc-7)
  ; 370,762 -> 226,928
  (road city-1-loc-7 city-1-loc-12)
  ; 391,278 -> 314,94
  (road city-1-loc-13 city-1-loc-4)
  ; 314,94 -> 391,278
  (road city-1-loc-4 city-1-loc-13)
  ; 391,278 -> 599,455
  (road city-1-loc-13 city-1-loc-5)
  ; 599,455 -> 391,278
  (road city-1-loc-5 city-1-loc-13)
  ; 391,278 -> 209,484
  (road city-1-loc-13 city-1-loc-8)
  ; 209,484 -> 391,278
  (road city-1-loc-8 city-1-loc-13)
  ; 864,742 -> 971,828
  (road city-1-loc-14 city-1-loc-3)
  ; 971,828 -> 864,742
  (road city-1-loc-3 city-1-loc-14)
  ; 864,742 -> 693,779
  (road city-1-loc-14 city-1-loc-9)
  ; 693,779 -> 864,742
  (road city-1-loc-9 city-1-loc-14)
  ; 901,439 -> 822,267
  (road city-1-loc-15 city-1-loc-2)
  ; 822,267 -> 901,439
  (road city-1-loc-2 city-1-loc-15)
  ; 901,439 -> 599,455
  (road city-1-loc-15 city-1-loc-5)
  ; 599,455 -> 901,439
  (road city-1-loc-5 city-1-loc-15)
  ; 901,439 -> 727,302
  (road city-1-loc-15 city-1-loc-6)
  ; 727,302 -> 901,439
  (road city-1-loc-6 city-1-loc-15)
  ; 901,439 -> 959,210
  (road city-1-loc-15 city-1-loc-11)
  ; 959,210 -> 901,439
  (road city-1-loc-11 city-1-loc-15)
  ; 2409,292 -> 2225,426
  (road city-2-loc-3 city-2-loc-1)
  ; 2225,426 -> 2409,292
  (road city-2-loc-1 city-2-loc-3)
  ; 2567,57 -> 2409,292
  (road city-2-loc-4 city-2-loc-3)
  ; 2409,292 -> 2567,57
  (road city-2-loc-3 city-2-loc-4)
  ; 2454,969 -> 2665,994
  (road city-2-loc-8 city-2-loc-6)
  ; 2665,994 -> 2454,969
  (road city-2-loc-6 city-2-loc-8)
  ; 2825,489 -> 2843,303
  (road city-2-loc-9 city-2-loc-2)
  ; 2843,303 -> 2825,489
  (road city-2-loc-2 city-2-loc-9)
  ; 2825,489 -> 2704,582
  (road city-2-loc-9 city-2-loc-7)
  ; 2704,582 -> 2825,489
  (road city-2-loc-7 city-2-loc-9)
  ; 2992,559 -> 2843,303
  (road city-2-loc-10 city-2-loc-2)
  ; 2843,303 -> 2992,559
  (road city-2-loc-2 city-2-loc-10)
  ; 2992,559 -> 2704,582
  (road city-2-loc-10 city-2-loc-7)
  ; 2704,582 -> 2992,559
  (road city-2-loc-7 city-2-loc-10)
  ; 2992,559 -> 2825,489
  (road city-2-loc-10 city-2-loc-9)
  ; 2825,489 -> 2992,559
  (road city-2-loc-9 city-2-loc-10)
  ; 2677,826 -> 2665,994
  (road city-2-loc-11 city-2-loc-6)
  ; 2665,994 -> 2677,826
  (road city-2-loc-6 city-2-loc-11)
  ; 2677,826 -> 2704,582
  (road city-2-loc-11 city-2-loc-7)
  ; 2704,582 -> 2677,826
  (road city-2-loc-7 city-2-loc-11)
  ; 2677,826 -> 2454,969
  (road city-2-loc-11 city-2-loc-8)
  ; 2454,969 -> 2677,826
  (road city-2-loc-8 city-2-loc-11)
  ; 2906,406 -> 2843,303
  (road city-2-loc-12 city-2-loc-2)
  ; 2843,303 -> 2906,406
  (road city-2-loc-2 city-2-loc-12)
  ; 2906,406 -> 2704,582
  (road city-2-loc-12 city-2-loc-7)
  ; 2704,582 -> 2906,406
  (road city-2-loc-7 city-2-loc-12)
  ; 2906,406 -> 2825,489
  (road city-2-loc-12 city-2-loc-9)
  ; 2825,489 -> 2906,406
  (road city-2-loc-9 city-2-loc-12)
  ; 2906,406 -> 2992,559
  (road city-2-loc-12 city-2-loc-10)
  ; 2992,559 -> 2906,406
  (road city-2-loc-10 city-2-loc-12)
  ; 2425,577 -> 2225,426
  (road city-2-loc-13 city-2-loc-1)
  ; 2225,426 -> 2425,577
  (road city-2-loc-1 city-2-loc-13)
  ; 2425,577 -> 2409,292
  (road city-2-loc-13 city-2-loc-3)
  ; 2409,292 -> 2425,577
  (road city-2-loc-3 city-2-loc-13)
  ; 2425,577 -> 2232,740
  (road city-2-loc-13 city-2-loc-5)
  ; 2232,740 -> 2425,577
  (road city-2-loc-5 city-2-loc-13)
  ; 2425,577 -> 2704,582
  (road city-2-loc-13 city-2-loc-7)
  ; 2704,582 -> 2425,577
  (road city-2-loc-7 city-2-loc-13)
  ; 2555,900 -> 2665,994
  (road city-2-loc-14 city-2-loc-6)
  ; 2665,994 -> 2555,900
  (road city-2-loc-6 city-2-loc-14)
  ; 2555,900 -> 2454,969
  (road city-2-loc-14 city-2-loc-8)
  ; 2454,969 -> 2555,900
  (road city-2-loc-8 city-2-loc-14)
  ; 2555,900 -> 2677,826
  (road city-2-loc-14 city-2-loc-11)
  ; 2677,826 -> 2555,900
  (road city-2-loc-11 city-2-loc-14)
  ; 2713,155 -> 2843,303
  (road city-2-loc-15 city-2-loc-2)
  ; 2843,303 -> 2713,155
  (road city-2-loc-2 city-2-loc-15)
  ; 2713,155 -> 2567,57
  (road city-2-loc-15 city-2-loc-4)
  ; 2567,57 -> 2713,155
  (road city-2-loc-4 city-2-loc-15)
  ; 1648,2069 -> 1648,2259
  (road city-3-loc-3 city-3-loc-2)
  ; 1648,2259 -> 1648,2069
  (road city-3-loc-2 city-3-loc-3)
  ; 1691,2373 -> 1648,2259
  (road city-3-loc-5 city-3-loc-2)
  ; 1648,2259 -> 1691,2373
  (road city-3-loc-2 city-3-loc-5)
  ; 1691,2373 -> 1551,2569
  (road city-3-loc-5 city-3-loc-4)
  ; 1551,2569 -> 1691,2373
  (road city-3-loc-4 city-3-loc-5)
  ; 1488,2415 -> 1648,2259
  (road city-3-loc-7 city-3-loc-2)
  ; 1648,2259 -> 1488,2415
  (road city-3-loc-2 city-3-loc-7)
  ; 1488,2415 -> 1551,2569
  (road city-3-loc-7 city-3-loc-4)
  ; 1551,2569 -> 1488,2415
  (road city-3-loc-4 city-3-loc-7)
  ; 1488,2415 -> 1691,2373
  (road city-3-loc-7 city-3-loc-5)
  ; 1691,2373 -> 1488,2415
  (road city-3-loc-5 city-3-loc-7)
  ; 1772,2920 -> 1982,2918
  (road city-3-loc-8 city-3-loc-1)
  ; 1982,2918 -> 1772,2920
  (road city-3-loc-1 city-3-loc-8)
  ; 1424,2654 -> 1551,2569
  (road city-3-loc-9 city-3-loc-4)
  ; 1551,2569 -> 1424,2654
  (road city-3-loc-4 city-3-loc-9)
  ; 1424,2654 -> 1176,2754
  (road city-3-loc-9 city-3-loc-6)
  ; 1176,2754 -> 1424,2654
  (road city-3-loc-6 city-3-loc-9)
  ; 1424,2654 -> 1488,2415
  (road city-3-loc-9 city-3-loc-7)
  ; 1488,2415 -> 1424,2654
  (road city-3-loc-7 city-3-loc-9)
  ; 1678,2967 -> 1772,2920
  (road city-3-loc-10 city-3-loc-8)
  ; 1772,2920 -> 1678,2967
  (road city-3-loc-8 city-3-loc-10)
  ; 1171,2465 -> 1176,2754
  (road city-3-loc-11 city-3-loc-6)
  ; 1176,2754 -> 1171,2465
  (road city-3-loc-6 city-3-loc-11)
  ; 1282,2571 -> 1551,2569
  (road city-3-loc-12 city-3-loc-4)
  ; 1551,2569 -> 1282,2571
  (road city-3-loc-4 city-3-loc-12)
  ; 1282,2571 -> 1176,2754
  (road city-3-loc-12 city-3-loc-6)
  ; 1176,2754 -> 1282,2571
  (road city-3-loc-6 city-3-loc-12)
  ; 1282,2571 -> 1488,2415
  (road city-3-loc-12 city-3-loc-7)
  ; 1488,2415 -> 1282,2571
  (road city-3-loc-7 city-3-loc-12)
  ; 1282,2571 -> 1424,2654
  (road city-3-loc-12 city-3-loc-9)
  ; 1424,2654 -> 1282,2571
  (road city-3-loc-9 city-3-loc-12)
  ; 1282,2571 -> 1171,2465
  (road city-3-loc-12 city-3-loc-11)
  ; 1171,2465 -> 1282,2571
  (road city-3-loc-11 city-3-loc-12)
  ; 1289,2200 -> 1488,2415
  (road city-3-loc-13 city-3-loc-7)
  ; 1488,2415 -> 1289,2200
  (road city-3-loc-7 city-3-loc-13)
  ; 1289,2200 -> 1171,2465
  (road city-3-loc-13 city-3-loc-11)
  ; 1171,2465 -> 1289,2200
  (road city-3-loc-11 city-3-loc-13)
  ; 1617,2662 -> 1551,2569
  (road city-3-loc-14 city-3-loc-4)
  ; 1551,2569 -> 1617,2662
  (road city-3-loc-4 city-3-loc-14)
  ; 1617,2662 -> 1691,2373
  (road city-3-loc-14 city-3-loc-5)
  ; 1691,2373 -> 1617,2662
  (road city-3-loc-5 city-3-loc-14)
  ; 1617,2662 -> 1488,2415
  (road city-3-loc-14 city-3-loc-7)
  ; 1488,2415 -> 1617,2662
  (road city-3-loc-7 city-3-loc-14)
  ; 1617,2662 -> 1772,2920
  (road city-3-loc-14 city-3-loc-8)
  ; 1772,2920 -> 1617,2662
  (road city-3-loc-8 city-3-loc-14)
  ; 1617,2662 -> 1424,2654
  (road city-3-loc-14 city-3-loc-9)
  ; 1424,2654 -> 1617,2662
  (road city-3-loc-9 city-3-loc-14)
  ; 1232,2911 -> 1176,2754
  (road city-3-loc-15 city-3-loc-6)
  ; 1176,2754 -> 1232,2911
  (road city-3-loc-6 city-3-loc-15)
  ; 971,828 <-> 2232,740
  (road city-1-loc-3 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-3)
  (road city-1-loc-3 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-3)
  (road city-2-loc-11 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-11)
  (at package-1 city-3-loc-13)
  (at package-2 city-1-loc-2)
  (at package-3 city-2-loc-13)
  (at package-4 city-1-loc-5)
  (at package-5 city-1-loc-3)
  (at truck-1 city-3-loc-9)
  (capacity truck-1 capacity-3)
  (at truck-2 city-3-loc-1)
  (capacity truck-2 capacity-4)
  (at truck-3 city-1-loc-2)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-13)
  (at package-2 city-2-loc-10)
  (at package-3 city-2-loc-11)
  (at package-4 city-2-loc-10)
  (at package-5 city-3-loc-5)
 ))
 
)
