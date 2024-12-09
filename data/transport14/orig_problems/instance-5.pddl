; Transport city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
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
  ; 560,131 -> 285,216
  (road city-loc-3 city-loc-1)
  ; 285,216 -> 560,131
  (road city-loc-1 city-loc-3)
  ; 181,38 -> 285,216
  (road city-loc-5 city-loc-1)
  ; 285,216 -> 181,38
  (road city-loc-1 city-loc-5)
  ; 141,876 -> 251,677
  (road city-loc-6 city-loc-4)
  ; 251,677 -> 141,876
  (road city-loc-4 city-loc-6)
  ; 239,307 -> 285,216
  (road city-loc-8 city-loc-1)
  ; 285,216 -> 239,307
  (road city-loc-1 city-loc-8)
  ; 239,307 -> 181,38
  (road city-loc-8 city-loc-5)
  ; 181,38 -> 239,307
  (road city-loc-5 city-loc-8)
  ; 118,400 -> 285,216
  (road city-loc-9 city-loc-1)
  ; 285,216 -> 118,400
  (road city-loc-1 city-loc-9)
  ; 118,400 -> 251,677
  (road city-loc-9 city-loc-4)
  ; 251,677 -> 118,400
  (road city-loc-4 city-loc-9)
  ; 118,400 -> 239,307
  (road city-loc-9 city-loc-8)
  ; 239,307 -> 118,400
  (road city-loc-8 city-loc-9)
  ; 340,7 -> 285,216
  (road city-loc-10 city-loc-1)
  ; 285,216 -> 340,7
  (road city-loc-1 city-loc-10)
  ; 340,7 -> 560,131
  (road city-loc-10 city-loc-3)
  ; 560,131 -> 340,7
  (road city-loc-3 city-loc-10)
  ; 340,7 -> 181,38
  (road city-loc-10 city-loc-5)
  ; 181,38 -> 340,7
  (road city-loc-5 city-loc-10)
  ; 340,7 -> 239,307
  (road city-loc-10 city-loc-8)
  ; 239,307 -> 340,7
  (road city-loc-8 city-loc-10)
  ; 675,345 -> 895,506
  (road city-loc-11 city-loc-2)
  ; 895,506 -> 675,345
  (road city-loc-2 city-loc-11)
  ; 675,345 -> 560,131
  (road city-loc-11 city-loc-3)
  ; 560,131 -> 675,345
  (road city-loc-3 city-loc-11)
  ; 973,757 -> 895,506
  (road city-loc-12 city-loc-2)
  ; 895,506 -> 973,757
  (road city-loc-2 city-loc-12)
  ; 866,797 -> 895,506
  (road city-loc-13 city-loc-2)
  ; 895,506 -> 866,797
  (road city-loc-2 city-loc-13)
  ; 866,797 -> 640,921
  (road city-loc-13 city-loc-7)
  ; 640,921 -> 866,797
  (road city-loc-7 city-loc-13)
  ; 866,797 -> 973,757
  (road city-loc-13 city-loc-12)
  ; 973,757 -> 866,797
  (road city-loc-12 city-loc-13)
  ; 436,867 -> 251,677
  (road city-loc-14 city-loc-4)
  ; 251,677 -> 436,867
  (road city-loc-4 city-loc-14)
  ; 436,867 -> 141,876
  (road city-loc-14 city-loc-6)
  ; 141,876 -> 436,867
  (road city-loc-6 city-loc-14)
  ; 436,867 -> 640,921
  (road city-loc-14 city-loc-7)
  ; 640,921 -> 436,867
  (road city-loc-7 city-loc-14)
  ; 822,267 -> 895,506
  (road city-loc-15 city-loc-2)
  ; 895,506 -> 822,267
  (road city-loc-2 city-loc-15)
  ; 822,267 -> 560,131
  (road city-loc-15 city-loc-3)
  ; 560,131 -> 822,267
  (road city-loc-3 city-loc-15)
  ; 822,267 -> 675,345
  (road city-loc-15 city-loc-11)
  ; 675,345 -> 822,267
  (road city-loc-11 city-loc-15)
  ; 599,455 -> 895,506
  (road city-loc-16 city-loc-2)
  ; 895,506 -> 599,455
  (road city-loc-2 city-loc-16)
  ; 599,455 -> 675,345
  (road city-loc-16 city-loc-11)
  ; 675,345 -> 599,455
  (road city-loc-11 city-loc-16)
  ; 599,455 -> 822,267
  (road city-loc-16 city-loc-15)
  ; 822,267 -> 599,455
  (road city-loc-15 city-loc-16)
  ; 370,762 -> 251,677
  (road city-loc-17 city-loc-4)
  ; 251,677 -> 370,762
  (road city-loc-4 city-loc-17)
  ; 370,762 -> 141,876
  (road city-loc-17 city-loc-6)
  ; 141,876 -> 370,762
  (road city-loc-6 city-loc-17)
  ; 370,762 -> 640,921
  (road city-loc-17 city-loc-7)
  ; 640,921 -> 370,762
  (road city-loc-7 city-loc-17)
  ; 370,762 -> 436,867
  (road city-loc-17 city-loc-14)
  ; 436,867 -> 370,762
  (road city-loc-14 city-loc-17)
  ; 209,484 -> 285,216
  (road city-loc-18 city-loc-1)
  ; 285,216 -> 209,484
  (road city-loc-1 city-loc-18)
  ; 209,484 -> 251,677
  (road city-loc-18 city-loc-4)
  ; 251,677 -> 209,484
  (road city-loc-4 city-loc-18)
  ; 209,484 -> 239,307
  (road city-loc-18 city-loc-8)
  ; 239,307 -> 209,484
  (road city-loc-8 city-loc-18)
  ; 209,484 -> 118,400
  (road city-loc-18 city-loc-9)
  ; 118,400 -> 209,484
  (road city-loc-9 city-loc-18)
  (at package-1 city-loc-3)
  (at package-2 city-loc-10)
  (at package-3 city-loc-13)
  (at package-4 city-loc-15)
  (at package-5 city-loc-10)
  (at package-6 city-loc-11)
  (at truck-1 city-loc-4)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-4)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-17)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-6)
  (at package-2 city-loc-1)
  (at package-3 city-loc-8)
  (at package-4 city-loc-6)
  (at package-5 city-loc-16)
  (at package-6 city-loc-14)
 ))
 
)
