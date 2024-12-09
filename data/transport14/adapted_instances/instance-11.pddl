; transport two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_25 - location
  location_17 - location
  location_14 - location
  location_21 - location
  location_12 - location
  location_15 - location
  location_26 - location
  location_33 - location
  location_20 - location
  location_3 - location
  location_34 - location
  location_23 - location
  location_4 - location
  location_27 - location
  location_32 - location
  location_24 - location
  location_29 - location
  location_10 - location
  location_18 - location
  location_35 - location
  location_7 - location
  location_30 - location
  location_0 - location
  location_22 - location
  location_31 - location
  location_8 - location
  location_13 - location
  location_19 - location
  location_5 - location
  location_28 - location
  location_16 - location
  location_9 - location
  location_6 - location
  location_1 - location
  location_2 - location
  location_11 - location
  vehicle_1 - vehicle
  vehicle_2 - vehicle
  vehicle_0 - vehicle
  package_5 - package
  package_3 - package
  package_0 - package
  package_2 - package
  package_4 - package
  package_1 - package
  capacity-number_4 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_1)
  ; 560,131 -> 285,216
  (road location_12 location_25)
  ; 285,216 -> 560,131
  (road location_25 location_12)
  ; 181,38 -> 285,216
  (road location_20 location_25)
  ; 285,216 -> 181,38
  (road location_25 location_20)
  ; 141,876 -> 251,677
  (road location_34 location_26)
  ; 251,677 -> 141,876
  (road location_26 location_34)
  ; 239,307 -> 285,216
  (road location_32 location_25)
  ; 285,216 -> 239,307
  (road location_25 location_32)
  ; 239,307 -> 181,38
  (road location_32 location_20)
  ; 181,38 -> 239,307
  (road location_20 location_32)
  ; 118,400 -> 285,216
  (road location_29 location_25)
  ; 285,216 -> 118,400
  (road location_25 location_29)
  ; 118,400 -> 251,677
  (road location_29 location_26)
  ; 251,677 -> 118,400
  (road location_26 location_29)
  ; 118,400 -> 239,307
  (road location_29 location_32)
  ; 239,307 -> 118,400
  (road location_32 location_29)
  ; 340,7 -> 285,216
  (road location_18 location_25)
  ; 285,216 -> 340,7
  (road location_25 location_18)
  ; 340,7 -> 560,131
  (road location_18 location_12)
  ; 560,131 -> 340,7
  (road location_12 location_18)
  ; 340,7 -> 181,38
  (road location_18 location_20)
  ; 181,38 -> 340,7
  (road location_20 location_18)
  ; 340,7 -> 239,307
  (road location_18 location_32)
  ; 239,307 -> 340,7
  (road location_32 location_18)
  ; 675,345 -> 895,506
  (road location_7 location_14)
  ; 895,506 -> 675,345
  (road location_14 location_7)
  ; 675,345 -> 560,131
  (road location_7 location_12)
  ; 560,131 -> 675,345
  (road location_12 location_7)
  ; 973,757 -> 895,506
  (road location_0 location_14)
  ; 895,506 -> 973,757
  (road location_14 location_0)
  ; 866,797 -> 895,506
  (road location_31 location_14)
  ; 895,506 -> 866,797
  (road location_14 location_31)
  ; 866,797 -> 640,921
  (road location_31 location_4)
  ; 640,921 -> 866,797
  (road location_4 location_31)
  ; 866,797 -> 973,757
  (road location_31 location_0)
  ; 973,757 -> 866,797
  (road location_0 location_31)
  ; 436,867 -> 251,677
  (road location_13 location_26)
  ; 251,677 -> 436,867
  (road location_26 location_13)
  ; 436,867 -> 141,876
  (road location_13 location_34)
  ; 141,876 -> 436,867
  (road location_34 location_13)
  ; 436,867 -> 640,921
  (road location_13 location_4)
  ; 640,921 -> 436,867
  (road location_4 location_13)
  ; 822,267 -> 895,506
  (road location_5 location_14)
  ; 895,506 -> 822,267
  (road location_14 location_5)
  ; 822,267 -> 560,131
  (road location_5 location_12)
  ; 560,131 -> 822,267
  (road location_12 location_5)
  ; 822,267 -> 675,345
  (road location_5 location_7)
  ; 675,345 -> 822,267
  (road location_7 location_5)
  ; 599,455 -> 895,506
  (road location_16 location_14)
  ; 895,506 -> 599,455
  (road location_14 location_16)
  ; 599,455 -> 675,345
  (road location_16 location_7)
  ; 675,345 -> 599,455
  (road location_7 location_16)
  ; 599,455 -> 822,267
  (road location_16 location_5)
  ; 822,267 -> 599,455
  (road location_5 location_16)
  ; 370,762 -> 251,677
  (road location_6 location_26)
  ; 251,677 -> 370,762
  (road location_26 location_6)
  ; 370,762 -> 141,876
  (road location_6 location_34)
  ; 141,876 -> 370,762
  (road location_34 location_6)
  ; 370,762 -> 640,921
  (road location_6 location_4)
  ; 640,921 -> 370,762
  (road location_4 location_6)
  ; 370,762 -> 436,867
  (road location_6 location_13)
  ; 436,867 -> 370,762
  (road location_13 location_6)
  ; 209,484 -> 285,216
  (road location_2 location_25)
  ; 285,216 -> 209,484
  (road location_25 location_2)
  ; 209,484 -> 251,677
  (road location_2 location_26)
  ; 251,677 -> 209,484
  (road location_26 location_2)
  ; 209,484 -> 239,307
  (road location_2 location_32)
  ; 239,307 -> 209,484
  (road location_32 location_2)
  ; 209,484 -> 118,400
  (road location_2 location_29)
  ; 118,400 -> 209,484
  (road location_29 location_2)
  ; 2374,777 -> 2220,554
  (road location_21 location_17)
  ; 2220,554 -> 2374,777
  (road location_17 location_21)
  ; 2307,925 -> 2374,777
  (road location_15 location_21)
  ; 2374,777 -> 2307,925
  (road location_21 location_15)
  ; 2140,736 -> 2220,554
  (road location_33 location_17)
  ; 2220,554 -> 2140,736
  (road location_17 location_33)
  ; 2140,736 -> 2374,777
  (road location_33 location_21)
  ; 2374,777 -> 2140,736
  (road location_21 location_33)
  ; 2140,736 -> 2307,925
  (road location_33 location_15)
  ; 2307,925 -> 2140,736
  (road location_15 location_33)
  ; 2260,356 -> 2220,554
  (road location_3 location_17)
  ; 2220,554 -> 2260,356
  (road location_17 location_3)
  ; 2577,848 -> 2374,777
  (road location_23 location_21)
  ; 2374,777 -> 2577,848
  (road location_21 location_23)
  ; 2577,848 -> 2307,925
  (road location_23 location_15)
  ; 2307,925 -> 2577,848
  (road location_15 location_23)
  ; 2633,694 -> 2374,777
  (road location_27 location_21)
  ; 2374,777 -> 2633,694
  (road location_21 location_27)
  ; 2633,694 -> 2577,848
  (road location_27 location_23)
  ; 2577,848 -> 2633,694
  (road location_23 location_27)
  ; 2755,326 -> 2619,195
  (road location_35 location_24)
  ; 2619,195 -> 2755,326
  (road location_24 location_35)
  ; 2756,712 -> 2577,848
  (road location_30 location_23)
  ; 2577,848 -> 2756,712
  (road location_23 location_30)
  ; 2756,712 -> 2633,694
  (road location_30 location_27)
  ; 2633,694 -> 2756,712
  (road location_27 location_30)
  ; 2756,712 -> 2983,755
  (road location_30 location_10)
  ; 2983,755 -> 2756,712
  (road location_10 location_30)
  ; 2504,342 -> 2260,356
  (road location_22 location_3)
  ; 2260,356 -> 2504,342
  (road location_3 location_22)
  ; 2504,342 -> 2619,195
  (road location_22 location_24)
  ; 2619,195 -> 2504,342
  (road location_24 location_22)
  ; 2504,342 -> 2755,326
  (road location_22 location_35)
  ; 2755,326 -> 2504,342
  (road location_35 location_22)
  ; 2134,151 -> 2260,356
  (road location_8 location_3)
  ; 2260,356 -> 2134,151
  (road location_3 location_8)
  ; 2651,991 -> 2577,848
  (road location_19 location_23)
  ; 2577,848 -> 2651,991
  (road location_23 location_19)
  ; 2651,991 -> 2633,694
  (road location_19 location_27)
  ; 2633,694 -> 2651,991
  (road location_27 location_19)
  ; 2651,991 -> 2756,712
  (road location_19 location_30)
  ; 2756,712 -> 2651,991
  (road location_30 location_19)
  ; 2822,842 -> 2577,848
  (road location_28 location_23)
  ; 2577,848 -> 2822,842
  (road location_23 location_28)
  ; 2822,842 -> 2633,694
  (road location_28 location_27)
  ; 2633,694 -> 2822,842
  (road location_27 location_28)
  ; 2822,842 -> 2983,755
  (road location_28 location_10)
  ; 2983,755 -> 2822,842
  (road location_10 location_28)
  ; 2822,842 -> 2756,712
  (road location_28 location_30)
  ; 2756,712 -> 2822,842
  (road location_30 location_28)
  ; 2822,842 -> 2651,991
  (road location_28 location_19)
  ; 2651,991 -> 2822,842
  (road location_19 location_28)
  ; 2864,302 -> 2619,195
  (road location_9 location_24)
  ; 2619,195 -> 2864,302
  (road location_24 location_9)
  ; 2864,302 -> 2755,326
  (road location_9 location_35)
  ; 2755,326 -> 2864,302
  (road location_35 location_9)
  ; 2847,622 -> 2633,694
  (road location_1 location_27)
  ; 2633,694 -> 2847,622
  (road location_27 location_1)
  ; 2847,622 -> 2983,755
  (road location_1 location_10)
  ; 2983,755 -> 2847,622
  (road location_10 location_1)
  ; 2847,622 -> 2755,326
  (road location_1 location_35)
  ; 2755,326 -> 2847,622
  (road location_35 location_1)
  ; 2847,622 -> 2756,712
  (road location_1 location_30)
  ; 2756,712 -> 2847,622
  (road location_30 location_1)
  ; 2847,622 -> 2822,842
  (road location_1 location_28)
  ; 2822,842 -> 2847,622
  (road location_28 location_1)
  ; 2070,845 -> 2374,777
  (road location_11 location_21)
  ; 2374,777 -> 2070,845
  (road location_21 location_11)
  ; 2070,845 -> 2307,925
  (road location_11 location_15)
  ; 2307,925 -> 2070,845
  (road location_15 location_11)
  ; 2070,845 -> 2140,736
  (road location_11 location_33)
  ; 2140,736 -> 2070,845
  (road location_33 location_11)
  ; 973,757 <-> 2070,845
  (road location_0 location_11)
  (road location_11 location_0)
  (at package_5 location_26)
  (at package_3 location_4)
  (at package_0 location_7)
  (at package_2 location_26)
  (at package_4 location_20)
  (at package_1 location_7)
  (at vehicle_1 location_23)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_2 location_28)
  (capacity vehicle_2 capacity-number_0)
  (at vehicle_0 location_8)
  (capacity vehicle_0 capacity-number_2)
 )
 (:goal (and
  (at package_5 location_10)
  (at package_3 location_21)
  (at package_0 location_33)
  (at package_2 location_24)
  (at package_4 location_21)
  (at package_1 location_8)
 ))
 
)
