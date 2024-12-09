; transport city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  location_8 - location
  location_10 - location
  location_14 - location
  location_17 - location
  location_15 - location
  location_9 - location
  location_6 - location
  location_2 - location
  location_12 - location
  location_13 - location
  location_16 - location
  location_3 - location
  location_7 - location
  location_4 - location
  location_5 - location
  location_1 - location
  location_0 - location
  location_11 - location
  vehicle_1 - vehicle
  vehicle_2 - vehicle
  vehicle_0 - vehicle
  package_3 - package
  package_4 - package
  package_5 - package
  package_2 - package
  package_1 - package
  package_0 - package
  capacity-number_2 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_0 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_2 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_0)
  ; 560,131 -> 285,216
  (road location_14 location_8)
  ; 285,216 -> 560,131
  (road location_8 location_14)
  ; 181,38 -> 285,216
  (road location_15 location_8)
  ; 285,216 -> 181,38
  (road location_8 location_15)
  ; 141,876 -> 251,677
  (road location_9 location_17)
  ; 251,677 -> 141,876
  (road location_17 location_9)
  ; 239,307 -> 285,216
  (road location_2 location_8)
  ; 285,216 -> 239,307
  (road location_8 location_2)
  ; 239,307 -> 181,38
  (road location_2 location_15)
  ; 181,38 -> 239,307
  (road location_15 location_2)
  ; 118,400 -> 285,216
  (road location_12 location_8)
  ; 285,216 -> 118,400
  (road location_8 location_12)
  ; 118,400 -> 251,677
  (road location_12 location_17)
  ; 251,677 -> 118,400
  (road location_17 location_12)
  ; 118,400 -> 239,307
  (road location_12 location_2)
  ; 239,307 -> 118,400
  (road location_2 location_12)
  ; 340,7 -> 285,216
  (road location_13 location_8)
  ; 285,216 -> 340,7
  (road location_8 location_13)
  ; 340,7 -> 560,131
  (road location_13 location_14)
  ; 560,131 -> 340,7
  (road location_14 location_13)
  ; 340,7 -> 181,38
  (road location_13 location_15)
  ; 181,38 -> 340,7
  (road location_15 location_13)
  ; 340,7 -> 239,307
  (road location_13 location_2)
  ; 239,307 -> 340,7
  (road location_2 location_13)
  ; 675,345 -> 895,506
  (road location_16 location_10)
  ; 895,506 -> 675,345
  (road location_10 location_16)
  ; 675,345 -> 560,131
  (road location_16 location_14)
  ; 560,131 -> 675,345
  (road location_14 location_16)
  ; 973,757 -> 895,506
  (road location_3 location_10)
  ; 895,506 -> 973,757
  (road location_10 location_3)
  ; 866,797 -> 895,506
  (road location_7 location_10)
  ; 895,506 -> 866,797
  (road location_10 location_7)
  ; 866,797 -> 640,921
  (road location_7 location_6)
  ; 640,921 -> 866,797
  (road location_6 location_7)
  ; 866,797 -> 973,757
  (road location_7 location_3)
  ; 973,757 -> 866,797
  (road location_3 location_7)
  ; 436,867 -> 251,677
  (road location_4 location_17)
  ; 251,677 -> 436,867
  (road location_17 location_4)
  ; 436,867 -> 141,876
  (road location_4 location_9)
  ; 141,876 -> 436,867
  (road location_9 location_4)
  ; 436,867 -> 640,921
  (road location_4 location_6)
  ; 640,921 -> 436,867
  (road location_6 location_4)
  ; 822,267 -> 895,506
  (road location_5 location_10)
  ; 895,506 -> 822,267
  (road location_10 location_5)
  ; 822,267 -> 560,131
  (road location_5 location_14)
  ; 560,131 -> 822,267
  (road location_14 location_5)
  ; 822,267 -> 675,345
  (road location_5 location_16)
  ; 675,345 -> 822,267
  (road location_16 location_5)
  ; 599,455 -> 895,506
  (road location_1 location_10)
  ; 895,506 -> 599,455
  (road location_10 location_1)
  ; 599,455 -> 675,345
  (road location_1 location_16)
  ; 675,345 -> 599,455
  (road location_16 location_1)
  ; 599,455 -> 822,267
  (road location_1 location_5)
  ; 822,267 -> 599,455
  (road location_5 location_1)
  ; 370,762 -> 251,677
  (road location_0 location_17)
  ; 251,677 -> 370,762
  (road location_17 location_0)
  ; 370,762 -> 141,876
  (road location_0 location_9)
  ; 141,876 -> 370,762
  (road location_9 location_0)
  ; 370,762 -> 640,921
  (road location_0 location_6)
  ; 640,921 -> 370,762
  (road location_6 location_0)
  ; 370,762 -> 436,867
  (road location_0 location_4)
  ; 436,867 -> 370,762
  (road location_4 location_0)
  ; 209,484 -> 285,216
  (road location_11 location_8)
  ; 285,216 -> 209,484
  (road location_8 location_11)
  ; 209,484 -> 251,677
  (road location_11 location_17)
  ; 251,677 -> 209,484
  (road location_17 location_11)
  ; 209,484 -> 239,307
  (road location_11 location_2)
  ; 239,307 -> 209,484
  (road location_2 location_11)
  ; 209,484 -> 118,400
  (road location_11 location_12)
  ; 118,400 -> 209,484
  (road location_12 location_11)
  (at package_3 location_14)
  (at package_4 location_13)
  (at package_5 location_7)
  (at package_2 location_5)
  (at package_1 location_13)
  (at package_0 location_16)
  (at vehicle_1 location_17)
  (capacity vehicle_1 capacity-number_0)
  (at vehicle_2 location_17)
  (capacity vehicle_2 capacity-number_0)
  (at vehicle_0 location_0)
  (capacity vehicle_0 capacity-number_4)
 )
 (:goal (and
  (at package_3 location_9)
  (at package_4 location_8)
  (at package_5 location_2)
  (at package_2 location_9)
  (at package_1 location_1)
  (at package_0 location_4)
 ))
 
)
