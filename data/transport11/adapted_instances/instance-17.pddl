; transport city-sequential-15nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed

(define (problem transport-city-sequential-15nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed)
 (:domain transport)
 (:objects
  location_7 - location
  location_2 - location
  location_10 - location
  location_6 - location
  location_14 - location
  location_8 - location
  location_1 - location
  location_5 - location
  location_11 - location
  location_13 - location
  location_0 - location
  location_9 - location
  location_3 - location
  location_12 - location
  location_4 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_3 - package
  package_0 - package
  package_1 - package
  package_5 - package
  package_4 - package
  capacity-number_3 - capacity-number
  capacity-number_0 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_4 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_0)
  (capacity-predecessor capacity-number_0 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_4)
  ; 347,149 -> 257,5
  (road location_6 location_7)
  ; 257,5 -> 347,149
  (road location_7 location_6)
  ; 347,149 -> 245,346
  (road location_6 location_2)
  ; 245,346 -> 347,149
  (road location_2 location_6)
  ; 336,475 -> 245,346
  (road location_14 location_2)
  ; 245,346 -> 336,475
  (road location_2 location_14)
  ; 336,475 -> 559,565
  (road location_14 location_10)
  ; 559,565 -> 336,475
  (road location_10 location_14)
  ; 170,709 -> 336,475
  (road location_8 location_14)
  ; 336,475 -> 170,709
  (road location_14 location_8)
  ; 521,375 -> 245,346
  (road location_1 location_2)
  ; 245,346 -> 521,375
  (road location_2 location_1)
  ; 521,375 -> 559,565
  (road location_1 location_10)
  ; 559,565 -> 521,375
  (road location_10 location_1)
  ; 521,375 -> 347,149
  (road location_1 location_6)
  ; 347,149 -> 521,375
  (road location_6 location_1)
  ; 521,375 -> 336,475
  (road location_1 location_14)
  ; 336,475 -> 521,375
  (road location_14 location_1)
  ; 720,241 -> 521,375
  (road location_11 location_1)
  ; 521,375 -> 720,241
  (road location_1 location_11)
  ; 720,241 -> 701,0
  (road location_11 location_5)
  ; 701,0 -> 720,241
  (road location_5 location_11)
  ; 630,722 -> 559,565
  (road location_13 location_10)
  ; 559,565 -> 630,722
  (road location_10 location_13)
  ; 120,854 -> 170,709
  (road location_0 location_8)
  ; 170,709 -> 120,854
  (road location_8 location_0)
  ; 377,283 -> 245,346
  (road location_9 location_2)
  ; 245,346 -> 377,283
  (road location_2 location_9)
  ; 377,283 -> 347,149
  (road location_9 location_6)
  ; 347,149 -> 377,283
  (road location_6 location_9)
  ; 377,283 -> 336,475
  (road location_9 location_14)
  ; 336,475 -> 377,283
  (road location_14 location_9)
  ; 377,283 -> 521,375
  (road location_9 location_1)
  ; 521,375 -> 377,283
  (road location_1 location_9)
  ; 171,545 -> 245,346
  (road location_3 location_2)
  ; 245,346 -> 171,545
  (road location_2 location_3)
  ; 171,545 -> 336,475
  (road location_3 location_14)
  ; 336,475 -> 171,545
  (road location_14 location_3)
  ; 171,545 -> 170,709
  (road location_3 location_8)
  ; 170,709 -> 171,545
  (road location_8 location_3)
  ; 348,607 -> 245,346
  (road location_12 location_2)
  ; 245,346 -> 348,607
  (road location_2 location_12)
  ; 348,607 -> 559,565
  (road location_12 location_10)
  ; 559,565 -> 348,607
  (road location_10 location_12)
  ; 348,607 -> 336,475
  (road location_12 location_14)
  ; 336,475 -> 348,607
  (road location_14 location_12)
  ; 348,607 -> 170,709
  (road location_12 location_8)
  ; 170,709 -> 348,607
  (road location_8 location_12)
  ; 348,607 -> 521,375
  (road location_12 location_1)
  ; 521,375 -> 348,607
  (road location_1 location_12)
  ; 348,607 -> 171,545
  (road location_12 location_3)
  ; 171,545 -> 348,607
  (road location_3 location_12)
  ; 395,741 -> 559,565
  (road location_4 location_10)
  ; 559,565 -> 395,741
  (road location_10 location_4)
  ; 395,741 -> 336,475
  (road location_4 location_14)
  ; 336,475 -> 395,741
  (road location_14 location_4)
  ; 395,741 -> 170,709
  (road location_4 location_8)
  ; 170,709 -> 395,741
  (road location_8 location_4)
  ; 395,741 -> 630,722
  (road location_4 location_13)
  ; 630,722 -> 395,741
  (road location_13 location_4)
  ; 395,741 -> 120,854
  (road location_4 location_0)
  ; 120,854 -> 395,741
  (road location_0 location_4)
  ; 395,741 -> 171,545
  (road location_4 location_3)
  ; 171,545 -> 395,741
  (road location_3 location_4)
  ; 395,741 -> 348,607
  (road location_4 location_12)
  ; 348,607 -> 395,741
  (road location_12 location_4)
  (at package_2 location_13)
  (at package_3 location_0)
  (at package_0 location_14)
  (at package_1 location_11)
  (at package_5 location_8)
  (at package_4 location_6)
  (at vehicle_1 location_9)
  (capacity vehicle_1 capacity-number_2)
  (at vehicle_0 location_14)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_2 location_3)
  (at package_3 location_10)
  (at package_0 location_2)
  (at package_1 location_5)
  (at package_5 location_6)
  (at package_4 location_4)
 ))
 
)
