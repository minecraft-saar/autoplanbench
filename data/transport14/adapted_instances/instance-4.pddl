; transport city-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed

(define (problem transport-city-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_13 - location
  location_4 - location
  location_6 - location
  location_5 - location
  location_8 - location
  location_3 - location
  location_14 - location
  location_2 - location
  location_10 - location
  location_9 - location
  location_1 - location
  location_7 - location
  location_0 - location
  location_12 - location
  vehicle_1 - vehicle
  vehicle_2 - vehicle
  vehicle_0 - vehicle
  package_1 - package
  package_4 - package
  package_0 - package
  package_2 - package
  package_3 - package
  capacity-number_1 - capacity-number
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_2 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_1 capacity-number_3)
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_2)
  ; 599,455 -> 822,267
  (road location_5 location_13)
  ; 822,267 -> 599,455
  (road location_13 location_5)
  ; 727,302 -> 822,267
  (road location_8 location_13)
  ; 822,267 -> 727,302
  (road location_13 location_8)
  ; 727,302 -> 599,455
  (road location_8 location_5)
  ; 599,455 -> 727,302
  (road location_5 location_8)
  ; 370,762 -> 436,867
  (road location_3 location_11)
  ; 436,867 -> 370,762
  (road location_11 location_3)
  ; 693,779 -> 436,867
  (road location_2 location_11)
  ; 436,867 -> 693,779
  (road location_11 location_2)
  ; 693,779 -> 971,828
  (road location_2 location_4)
  ; 971,828 -> 693,779
  (road location_4 location_2)
  ; 530,579 -> 599,455
  (road location_10 location_5)
  ; 599,455 -> 530,579
  (road location_5 location_10)
  ; 530,579 -> 370,762
  (road location_10 location_3)
  ; 370,762 -> 530,579
  (road location_3 location_10)
  ; 530,579 -> 693,779
  (road location_10 location_2)
  ; 693,779 -> 530,579
  (road location_2 location_10)
  ; 959,210 -> 822,267
  (road location_9 location_13)
  ; 822,267 -> 959,210
  (road location_13 location_9)
  ; 959,210 -> 727,302
  (road location_9 location_8)
  ; 727,302 -> 959,210
  (road location_8 location_9)
  ; 226,928 -> 436,867
  (road location_1 location_11)
  ; 436,867 -> 226,928
  (road location_11 location_1)
  ; 226,928 -> 370,762
  (road location_1 location_3)
  ; 370,762 -> 226,928
  (road location_3 location_1)
  ; 391,278 -> 314,94
  (road location_7 location_6)
  ; 314,94 -> 391,278
  (road location_6 location_7)
  ; 391,278 -> 599,455
  (road location_7 location_5)
  ; 599,455 -> 391,278
  (road location_5 location_7)
  ; 391,278 -> 209,484
  (road location_7 location_14)
  ; 209,484 -> 391,278
  (road location_14 location_7)
  ; 864,742 -> 971,828
  (road location_0 location_4)
  ; 971,828 -> 864,742
  (road location_4 location_0)
  ; 864,742 -> 693,779
  (road location_0 location_2)
  ; 693,779 -> 864,742
  (road location_2 location_0)
  ; 901,439 -> 822,267
  (road location_12 location_13)
  ; 822,267 -> 901,439
  (road location_13 location_12)
  ; 901,439 -> 599,455
  (road location_12 location_5)
  ; 599,455 -> 901,439
  (road location_5 location_12)
  ; 901,439 -> 727,302
  (road location_12 location_8)
  ; 727,302 -> 901,439
  (road location_8 location_12)
  ; 901,439 -> 959,210
  (road location_12 location_9)
  ; 959,210 -> 901,439
  (road location_9 location_12)
  (at package_1 location_2)
  (at package_4 location_2)
  (at package_0 location_0)
  (at package_2 location_11)
  (at package_3 location_13)
  (at vehicle_1 location_0)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_2 location_12)
  (capacity vehicle_2 capacity-number_4)
  (at vehicle_0 location_2)
  (capacity vehicle_0 capacity-number_0)
 )
 (:goal (and
  (at package_1 location_9)
  (at package_4 location_10)
  (at package_0 location_5)
  (at package_2 location_1)
  (at package_3 location_2)
 ))
 
)
