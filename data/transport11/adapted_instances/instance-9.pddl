; transport city-sequential-14nodes-1000size-2degree-100mindistance-2trucks-7packages-2012seed

(define (problem transport-city-sequential-14nodes-1000size-2degree-100mindistance-2trucks-7packages-2012seed)
 (:domain transport)
 (:objects
  location_11 - location
  location_4 - location
  location_8 - location
  location_1 - location
  location_10 - location
  location_2 - location
  location_13 - location
  location_7 - location
  location_9 - location
  location_12 - location
  location_6 - location
  location_3 - location
  location_0 - location
  location_5 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_0 - package
  package_3 - package
  package_6 - package
  package_4 - package
  package_5 - package
  package_1 - package
  package_2 - package
  capacity-number_3 - capacity-number
  capacity-number_2 - capacity-number
  capacity-number_1 - capacity-number
  capacity-number_4 - capacity-number
  capacity-number_0 - capacity-number
 )
 (:init
  (capacity-predecessor capacity-number_3 capacity-number_2)
  (capacity-predecessor capacity-number_2 capacity-number_1)
  (capacity-predecessor capacity-number_1 capacity-number_4)
  (capacity-predecessor capacity-number_4 capacity-number_0)
  ; 715,151 -> 911,253
  (road location_1 location_4)
  ; 911,253 -> 715,151
  (road location_4 location_1)
  ; 390,832 -> 420,666
  (road location_10 location_8)
  ; 420,666 -> 390,832
  (road location_8 location_10)
  ; 737,267 -> 911,253
  (road location_2 location_4)
  ; 911,253 -> 737,267
  (road location_4 location_2)
  ; 737,267 -> 715,151
  (road location_2 location_1)
  ; 715,151 -> 737,267
  (road location_1 location_2)
  ; 134,482 -> 171,286
  (road location_7 location_13)
  ; 171,286 -> 134,482
  (road location_13 location_7)
  ; 265,426 -> 171,286
  (road location_9 location_13)
  ; 171,286 -> 265,426
  (road location_13 location_9)
  ; 265,426 -> 134,482
  (road location_9 location_7)
  ; 134,482 -> 265,426
  (road location_7 location_9)
  ; 285,311 -> 171,286
  (road location_12 location_13)
  ; 171,286 -> 285,311
  (road location_13 location_12)
  ; 285,311 -> 134,482
  (road location_12 location_7)
  ; 134,482 -> 285,311
  (road location_7 location_12)
  ; 285,311 -> 265,426
  (road location_12 location_9)
  ; 265,426 -> 285,311
  (road location_9 location_12)
  ; 182,153 -> 171,286
  (road location_6 location_13)
  ; 171,286 -> 182,153
  (road location_13 location_6)
  ; 182,153 -> 285,311
  (road location_6 location_12)
  ; 285,311 -> 182,153
  (road location_12 location_6)
  ; 565,333 -> 658,538
  (road location_3 location_11)
  ; 658,538 -> 565,333
  (road location_11 location_3)
  ; 565,333 -> 715,151
  (road location_3 location_1)
  ; 715,151 -> 565,333
  (road location_1 location_3)
  ; 565,333 -> 737,267
  (road location_3 location_2)
  ; 737,267 -> 565,333
  (road location_2 location_3)
  ; 341,516 -> 420,666
  (road location_0 location_8)
  ; 420,666 -> 341,516
  (road location_8 location_0)
  ; 341,516 -> 134,482
  (road location_0 location_7)
  ; 134,482 -> 341,516
  (road location_7 location_0)
  ; 341,516 -> 265,426
  (road location_0 location_9)
  ; 265,426 -> 341,516
  (road location_9 location_0)
  ; 341,516 -> 285,311
  (road location_0 location_12)
  ; 285,311 -> 341,516
  (road location_12 location_0)
  ; 414,346 -> 171,286
  (road location_5 location_13)
  ; 171,286 -> 414,346
  (road location_13 location_5)
  ; 414,346 -> 265,426
  (road location_5 location_9)
  ; 265,426 -> 414,346
  (road location_9 location_5)
  ; 414,346 -> 285,311
  (road location_5 location_12)
  ; 285,311 -> 414,346
  (road location_12 location_5)
  ; 414,346 -> 565,333
  (road location_5 location_3)
  ; 565,333 -> 414,346
  (road location_3 location_5)
  ; 414,346 -> 341,516
  (road location_5 location_0)
  ; 341,516 -> 414,346
  (road location_0 location_5)
  (at package_0 location_7)
  (at package_3 location_11)
  (at package_6 location_2)
  (at package_4 location_3)
  (at package_5 location_1)
  (at package_1 location_9)
  (at package_2 location_9)
  (at vehicle_1 location_7)
  (capacity vehicle_1 capacity-number_1)
  (at vehicle_0 location_1)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_0 location_11)
  (at package_3 location_1)
  (at package_6 location_7)
  (at package_4 location_13)
  (at package_5 location_11)
  (at package_1 location_1)
  (at package_2 location_4)
 ))
 
)
