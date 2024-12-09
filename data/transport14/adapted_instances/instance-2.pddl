; transport city-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed

(define (problem transport-city-sequential-10nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
 (:domain transport)
 (:objects
  location_4 - location
  location_9 - location
  location_0 - location
  location_3 - location
  location_5 - location
  location_1 - location
  location_7 - location
  location_2 - location
  location_6 - location
  location_8 - location
  vehicle_1 - vehicle
  vehicle_0 - vehicle
  package_2 - package
  package_3 - package
  package_0 - package
  package_1 - package
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
  ; 387,219 -> 274,308
  (road location_3 location_0)
  ; 274,308 -> 387,219
  (road location_0 location_3)
  ; 358,437 -> 274,308
  (road location_5 location_0)
  ; 274,308 -> 358,437
  (road location_0 location_5)
  ; 358,437 -> 387,219
  (road location_5 location_3)
  ; 387,219 -> 358,437
  (road location_3 location_5)
  ; 220,489 -> 108,660
  (road location_1 location_4)
  ; 108,660 -> 220,489
  (road location_4 location_1)
  ; 220,489 -> 274,308
  (road location_1 location_0)
  ; 274,308 -> 220,489
  (road location_0 location_1)
  ; 220,489 -> 358,437
  (road location_1 location_5)
  ; 358,437 -> 220,489
  (road location_5 location_1)
  ; 504,478 -> 274,308
  (road location_7 location_0)
  ; 274,308 -> 504,478
  (road location_0 location_7)
  ; 504,478 -> 387,219
  (road location_7 location_3)
  ; 387,219 -> 504,478
  (road location_3 location_7)
  ; 504,478 -> 358,437
  (road location_7 location_5)
  ; 358,437 -> 504,478
  (road location_5 location_7)
  ; 504,478 -> 220,489
  (road location_7 location_1)
  ; 220,489 -> 504,478
  (road location_1 location_7)
  ; 532,77 -> 387,219
  (road location_2 location_3)
  ; 387,219 -> 532,77
  (road location_3 location_2)
  ; 395,718 -> 108,660
  (road location_6 location_4)
  ; 108,660 -> 395,718
  (road location_4 location_6)
  ; 395,718 -> 429,973
  (road location_6 location_9)
  ; 429,973 -> 395,718
  (road location_9 location_6)
  ; 395,718 -> 358,437
  (road location_6 location_5)
  ; 358,437 -> 395,718
  (road location_5 location_6)
  ; 395,718 -> 220,489
  (road location_6 location_1)
  ; 220,489 -> 395,718
  (road location_1 location_6)
  ; 395,718 -> 504,478
  (road location_6 location_7)
  ; 504,478 -> 395,718
  (road location_7 location_6)
  ; 609,959 -> 429,973
  (road location_8 location_9)
  ; 429,973 -> 609,959
  (road location_9 location_8)
  (at package_2 location_1)
  (at package_3 location_9)
  (at package_0 location_0)
  (at package_1 location_1)
  (at vehicle_1 location_1)
  (capacity vehicle_1 capacity-number_4)
  (at vehicle_0 location_0)
  (capacity vehicle_0 capacity-number_1)
 )
 (:goal (and
  (at package_2 location_7)
  (at package_3 location_5)
  (at package_0 location_8)
  (at package_1 location_5)
 ))
 
)
