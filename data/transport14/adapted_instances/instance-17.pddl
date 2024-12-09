; transport three-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-three-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_20 - location
  location_45 - location
  location_17 - location
  location_38 - location
  location_30 - location
  location_24 - location
  location_3 - location
  location_25 - location
  location_51 - location
  location_19 - location
  location_48 - location
  location_36 - location
  location_15 - location
  location_35 - location
  location_21 - location
  location_37 - location
  location_33 - location
  location_5 - location
  location_31 - location
  location_53 - location
  location_13 - location
  location_1 - location
  location_41 - location
  location_46 - location
  location_39 - location
  location_23 - location
  location_12 - location
  location_43 - location
  location_8 - location
  location_50 - location
  location_4 - location
  location_18 - location
  location_34 - location
  location_16 - location
  location_26 - location
  location_6 - location
  location_32 - location
  location_29 - location
  location_10 - location
  location_7 - location
  location_27 - location
  location_40 - location
  location_22 - location
  location_52 - location
  location_42 - location
  location_28 - location
  location_9 - location
  location_2 - location
  location_49 - location
  location_0 - location
  location_14 - location
  location_47 - location
  location_44 - location
  location_11 - location
  vehicle_0 - vehicle
  vehicle_2 - vehicle
  vehicle_1 - vehicle
  package_0 - package
  package_1 - package
  package_3 - package
  package_5 - package
  package_2 - package
  package_4 - package
  capacity-number_4 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_4 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_3)
  ; 560,131 -> 285,216
  (road location_3 location_20)
  ; 285,216 -> 560,131
  (road location_20 location_3)
  ; 181,38 -> 285,216
  (road location_15 location_20)
  ; 285,216 -> 181,38
  (road location_20 location_15)
  ; 141,876 -> 251,677
  (road location_37 location_19)
  ; 251,677 -> 141,876
  (road location_19 location_37)
  ; 239,307 -> 285,216
  (road location_1 location_20)
  ; 285,216 -> 239,307
  (road location_20 location_1)
  ; 239,307 -> 181,38
  (road location_1 location_15)
  ; 181,38 -> 239,307
  (road location_15 location_1)
  ; 118,400 -> 285,216
  (road location_39 location_20)
  ; 285,216 -> 118,400
  (road location_20 location_39)
  ; 118,400 -> 251,677
  (road location_39 location_19)
  ; 251,677 -> 118,400
  (road location_19 location_39)
  ; 118,400 -> 239,307
  (road location_39 location_1)
  ; 239,307 -> 118,400
  (road location_1 location_39)
  ; 340,7 -> 285,216
  (road location_43 location_20)
  ; 285,216 -> 340,7
  (road location_20 location_43)
  ; 340,7 -> 560,131
  (road location_43 location_3)
  ; 560,131 -> 340,7
  (road location_3 location_43)
  ; 340,7 -> 181,38
  (road location_43 location_15)
  ; 181,38 -> 340,7
  (road location_15 location_43)
  ; 340,7 -> 239,307
  (road location_43 location_1)
  ; 239,307 -> 340,7
  (road location_1 location_43)
  ; 675,345 -> 895,506
  (road location_4 location_38)
  ; 895,506 -> 675,345
  (road location_38 location_4)
  ; 675,345 -> 560,131
  (road location_4 location_3)
  ; 560,131 -> 675,345
  (road location_3 location_4)
  ; 973,757 -> 895,506
  (road location_16 location_38)
  ; 895,506 -> 973,757
  (road location_38 location_16)
  ; 866,797 -> 895,506
  (road location_32 location_38)
  ; 895,506 -> 866,797
  (road location_38 location_32)
  ; 866,797 -> 640,921
  (road location_32 location_31)
  ; 640,921 -> 866,797
  (road location_31 location_32)
  ; 866,797 -> 973,757
  (road location_32 location_16)
  ; 973,757 -> 866,797
  (road location_16 location_32)
  ; 436,867 -> 251,677
  (road location_7 location_19)
  ; 251,677 -> 436,867
  (road location_19 location_7)
  ; 436,867 -> 141,876
  (road location_7 location_37)
  ; 141,876 -> 436,867
  (road location_37 location_7)
  ; 436,867 -> 640,921
  (road location_7 location_31)
  ; 640,921 -> 436,867
  (road location_31 location_7)
  ; 822,267 -> 895,506
  (road location_22 location_38)
  ; 895,506 -> 822,267
  (road location_38 location_22)
  ; 822,267 -> 560,131
  (road location_22 location_3)
  ; 560,131 -> 822,267
  (road location_3 location_22)
  ; 822,267 -> 675,345
  (road location_22 location_4)
  ; 675,345 -> 822,267
  (road location_4 location_22)
  ; 599,455 -> 895,506
  (road location_28 location_38)
  ; 895,506 -> 599,455
  (road location_38 location_28)
  ; 599,455 -> 675,345
  (road location_28 location_4)
  ; 675,345 -> 599,455
  (road location_4 location_28)
  ; 599,455 -> 822,267
  (road location_28 location_22)
  ; 822,267 -> 599,455
  (road location_22 location_28)
  ; 370,762 -> 251,677
  (road location_49 location_19)
  ; 251,677 -> 370,762
  (road location_19 location_49)
  ; 370,762 -> 141,876
  (road location_49 location_37)
  ; 141,876 -> 370,762
  (road location_37 location_49)
  ; 370,762 -> 640,921
  (road location_49 location_31)
  ; 640,921 -> 370,762
  (road location_31 location_49)
  ; 370,762 -> 436,867
  (road location_49 location_7)
  ; 436,867 -> 370,762
  (road location_7 location_49)
  ; 209,484 -> 285,216
  (road location_47 location_20)
  ; 285,216 -> 209,484
  (road location_20 location_47)
  ; 209,484 -> 251,677
  (road location_47 location_19)
  ; 251,677 -> 209,484
  (road location_19 location_47)
  ; 209,484 -> 239,307
  (road location_47 location_1)
  ; 239,307 -> 209,484
  (road location_1 location_47)
  ; 209,484 -> 118,400
  (road location_47 location_39)
  ; 118,400 -> 209,484
  (road location_39 location_47)
  ; 2374,777 -> 2220,554
  (road location_30 location_45)
  ; 2220,554 -> 2374,777
  (road location_45 location_30)
  ; 2307,925 -> 2374,777
  (road location_25 location_30)
  ; 2374,777 -> 2307,925
  (road location_30 location_25)
  ; 2140,736 -> 2220,554
  (road location_48 location_45)
  ; 2220,554 -> 2140,736
  (road location_45 location_48)
  ; 2140,736 -> 2374,777
  (road location_48 location_30)
  ; 2374,777 -> 2140,736
  (road location_30 location_48)
  ; 2140,736 -> 2307,925
  (road location_48 location_25)
  ; 2307,925 -> 2140,736
  (road location_25 location_48)
  ; 2260,356 -> 2220,554
  (road location_35 location_45)
  ; 2220,554 -> 2260,356
  (road location_45 location_35)
  ; 2577,848 -> 2374,777
  (road location_33 location_30)
  ; 2374,777 -> 2577,848
  (road location_30 location_33)
  ; 2577,848 -> 2307,925
  (road location_33 location_25)
  ; 2307,925 -> 2577,848
  (road location_25 location_33)
  ; 2633,694 -> 2374,777
  (road location_53 location_30)
  ; 2374,777 -> 2633,694
  (road location_30 location_53)
  ; 2633,694 -> 2577,848
  (road location_53 location_33)
  ; 2577,848 -> 2633,694
  (road location_33 location_53)
  ; 2755,326 -> 2619,195
  (road location_8 location_41)
  ; 2619,195 -> 2755,326
  (road location_41 location_8)
  ; 2756,712 -> 2577,848
  (road location_18 location_33)
  ; 2577,848 -> 2756,712
  (road location_33 location_18)
  ; 2756,712 -> 2633,694
  (road location_18 location_53)
  ; 2633,694 -> 2756,712
  (road location_53 location_18)
  ; 2756,712 -> 2983,755
  (road location_18 location_23)
  ; 2983,755 -> 2756,712
  (road location_23 location_18)
  ; 2504,342 -> 2260,356
  (road location_26 location_35)
  ; 2260,356 -> 2504,342
  (road location_35 location_26)
  ; 2504,342 -> 2619,195
  (road location_26 location_41)
  ; 2619,195 -> 2504,342
  (road location_41 location_26)
  ; 2504,342 -> 2755,326
  (road location_26 location_8)
  ; 2755,326 -> 2504,342
  (road location_8 location_26)
  ; 2134,151 -> 2260,356
  (road location_29 location_35)
  ; 2260,356 -> 2134,151
  (road location_35 location_29)
  ; 2651,991 -> 2577,848
  (road location_27 location_33)
  ; 2577,848 -> 2651,991
  (road location_33 location_27)
  ; 2651,991 -> 2633,694
  (road location_27 location_53)
  ; 2633,694 -> 2651,991
  (road location_53 location_27)
  ; 2651,991 -> 2756,712
  (road location_27 location_18)
  ; 2756,712 -> 2651,991
  (road location_18 location_27)
  ; 2822,842 -> 2577,848
  (road location_52 location_33)
  ; 2577,848 -> 2822,842
  (road location_33 location_52)
  ; 2822,842 -> 2633,694
  (road location_52 location_53)
  ; 2633,694 -> 2822,842
  (road location_53 location_52)
  ; 2822,842 -> 2983,755
  (road location_52 location_23)
  ; 2983,755 -> 2822,842
  (road location_23 location_52)
  ; 2822,842 -> 2756,712
  (road location_52 location_18)
  ; 2756,712 -> 2822,842
  (road location_18 location_52)
  ; 2822,842 -> 2651,991
  (road location_52 location_27)
  ; 2651,991 -> 2822,842
  (road location_27 location_52)
  ; 2864,302 -> 2619,195
  (road location_9 location_41)
  ; 2619,195 -> 2864,302
  (road location_41 location_9)
  ; 2864,302 -> 2755,326
  (road location_9 location_8)
  ; 2755,326 -> 2864,302
  (road location_8 location_9)
  ; 2847,622 -> 2633,694
  (road location_0 location_53)
  ; 2633,694 -> 2847,622
  (road location_53 location_0)
  ; 2847,622 -> 2983,755
  (road location_0 location_23)
  ; 2983,755 -> 2847,622
  (road location_23 location_0)
  ; 2847,622 -> 2755,326
  (road location_0 location_8)
  ; 2755,326 -> 2847,622
  (road location_8 location_0)
  ; 2847,622 -> 2756,712
  (road location_0 location_18)
  ; 2756,712 -> 2847,622
  (road location_18 location_0)
  ; 2847,622 -> 2822,842
  (road location_0 location_52)
  ; 2822,842 -> 2847,622
  (road location_52 location_0)
  ; 2070,845 -> 2374,777
  (road location_44 location_30)
  ; 2374,777 -> 2070,845
  (road location_30 location_44)
  ; 2070,845 -> 2307,925
  (road location_44 location_25)
  ; 2307,925 -> 2070,845
  (road location_25 location_44)
  ; 2070,845 -> 2140,736
  (road location_44 location_48)
  ; 2140,736 -> 2070,845
  (road location_48 location_44)
  ; 1185,2729 -> 1318,2906
  (road location_51 location_24)
  ; 1318,2906 -> 1185,2729
  (road location_24 location_51)
  ; 1195,2492 -> 1185,2729
  (road location_21 location_51)
  ; 1185,2729 -> 1195,2492
  (road location_51 location_21)
  ; 1759,2169 -> 1656,2009
  (road location_5 location_17)
  ; 1656,2009 -> 1759,2169
  (road location_17 location_5)
  ; 1759,2169 -> 1759,2355
  (road location_5 location_36)
  ; 1759,2355 -> 1759,2169
  (road location_36 location_5)
  ; 1066,2193 -> 1204,2003
  (road location_46 location_13)
  ; 1204,2003 -> 1066,2193
  (road location_13 location_46)
  ; 1215,2275 -> 1195,2492
  (road location_12 location_21)
  ; 1195,2492 -> 1215,2275
  (road location_21 location_12)
  ; 1215,2275 -> 1204,2003
  (road location_12 location_13)
  ; 1204,2003 -> 1215,2275
  (road location_13 location_12)
  ; 1215,2275 -> 1066,2193
  (road location_12 location_46)
  ; 1066,2193 -> 1215,2275
  (road location_46 location_12)
  ; 1474,2524 -> 1195,2492
  (road location_34 location_21)
  ; 1195,2492 -> 1474,2524
  (road location_21 location_34)
  ; 1634,2643 -> 1759,2355
  (road location_6 location_36)
  ; 1759,2355 -> 1634,2643
  (road location_36 location_6)
  ; 1634,2643 -> 1474,2524
  (road location_6 location_34)
  ; 1474,2524 -> 1634,2643
  (road location_34 location_6)
  ; 1263,2086 -> 1204,2003
  (road location_10 location_13)
  ; 1204,2003 -> 1263,2086
  (road location_13 location_10)
  ; 1263,2086 -> 1066,2193
  (road location_10 location_46)
  ; 1066,2193 -> 1263,2086
  (road location_46 location_10)
  ; 1263,2086 -> 1215,2275
  (road location_10 location_12)
  ; 1215,2275 -> 1263,2086
  (road location_12 location_10)
  ; 1888,2644 -> 1759,2355
  (road location_40 location_36)
  ; 1759,2355 -> 1888,2644
  (road location_36 location_40)
  ; 1888,2644 -> 1634,2643
  (road location_40 location_6)
  ; 1634,2643 -> 1888,2644
  (road location_6 location_40)
  ; 1025,2359 -> 1195,2492
  (road location_42 location_21)
  ; 1195,2492 -> 1025,2359
  (road location_21 location_42)
  ; 1025,2359 -> 1066,2193
  (road location_42 location_46)
  ; 1066,2193 -> 1025,2359
  (road location_46 location_42)
  ; 1025,2359 -> 1215,2275
  (road location_42 location_12)
  ; 1215,2275 -> 1025,2359
  (road location_12 location_42)
  ; 1044,2525 -> 1185,2729
  (road location_2 location_51)
  ; 1185,2729 -> 1044,2525
  (road location_51 location_2)
  ; 1044,2525 -> 1195,2492
  (road location_2 location_21)
  ; 1195,2492 -> 1044,2525
  (road location_21 location_2)
  ; 1044,2525 -> 1215,2275
  (road location_2 location_12)
  ; 1215,2275 -> 1044,2525
  (road location_12 location_2)
  ; 1044,2525 -> 1025,2359
  (road location_2 location_42)
  ; 1025,2359 -> 1044,2525
  (road location_42 location_2)
  ; 1047,2873 -> 1318,2906
  (road location_14 location_24)
  ; 1318,2906 -> 1047,2873
  (road location_24 location_14)
  ; 1047,2873 -> 1185,2729
  (road location_14 location_51)
  ; 1185,2729 -> 1047,2873
  (road location_51 location_14)
  ; 1722,2816 -> 1775,2970
  (road location_11 location_50)
  ; 1775,2970 -> 1722,2816
  (road location_50 location_11)
  ; 1722,2816 -> 1634,2643
  (road location_11 location_6)
  ; 1634,2643 -> 1722,2816
  (road location_6 location_11)
  ; 1722,2816 -> 1888,2644
  (road location_11 location_40)
  ; 1888,2644 -> 1722,2816
  (road location_40 location_11)
  ; 973,757 <-> 2070,845
  (road location_16 location_44)
  (road location_44 location_16)
  (road location_16 location_21)
  (road location_21 location_16)
  (road location_52 location_36)
  (road location_36 location_52)
  (at package_0 location_39)
  (at package_1 location_1)
  (at package_3 location_24)
  (at package_5 location_10)
  (at package_2 location_20)
  (at package_4 location_33)
  (at vehicle_0 location_14)
  (capacity vehicle_0 capacity-number_1)
  (at vehicle_2 location_16)
  (capacity vehicle_2 capacity-number_2)
  (at vehicle_1 location_18)
  (capacity vehicle_1 capacity-number_3)
 )
 (:goal (and
  (at package_0 location_48)
  (at package_1 location_12)
  (at package_3 location_25)
  (at package_5 location_6)
  (at package_2 location_7)
  (at package_4 location_46)
 ))
 
)
