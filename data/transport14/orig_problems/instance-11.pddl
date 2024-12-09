; Transport two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed

(define (problem transport-two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-6packages-2014seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
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
  (road city-1-loc-3 city-1-loc-1)
  ; 285,216 -> 560,131
  (road city-1-loc-1 city-1-loc-3)
  ; 181,38 -> 285,216
  (road city-1-loc-5 city-1-loc-1)
  ; 285,216 -> 181,38
  (road city-1-loc-1 city-1-loc-5)
  ; 141,876 -> 251,677
  (road city-1-loc-6 city-1-loc-4)
  ; 251,677 -> 141,876
  (road city-1-loc-4 city-1-loc-6)
  ; 239,307 -> 285,216
  (road city-1-loc-8 city-1-loc-1)
  ; 285,216 -> 239,307
  (road city-1-loc-1 city-1-loc-8)
  ; 239,307 -> 181,38
  (road city-1-loc-8 city-1-loc-5)
  ; 181,38 -> 239,307
  (road city-1-loc-5 city-1-loc-8)
  ; 118,400 -> 285,216
  (road city-1-loc-9 city-1-loc-1)
  ; 285,216 -> 118,400
  (road city-1-loc-1 city-1-loc-9)
  ; 118,400 -> 251,677
  (road city-1-loc-9 city-1-loc-4)
  ; 251,677 -> 118,400
  (road city-1-loc-4 city-1-loc-9)
  ; 118,400 -> 239,307
  (road city-1-loc-9 city-1-loc-8)
  ; 239,307 -> 118,400
  (road city-1-loc-8 city-1-loc-9)
  ; 340,7 -> 285,216
  (road city-1-loc-10 city-1-loc-1)
  ; 285,216 -> 340,7
  (road city-1-loc-1 city-1-loc-10)
  ; 340,7 -> 560,131
  (road city-1-loc-10 city-1-loc-3)
  ; 560,131 -> 340,7
  (road city-1-loc-3 city-1-loc-10)
  ; 340,7 -> 181,38
  (road city-1-loc-10 city-1-loc-5)
  ; 181,38 -> 340,7
  (road city-1-loc-5 city-1-loc-10)
  ; 340,7 -> 239,307
  (road city-1-loc-10 city-1-loc-8)
  ; 239,307 -> 340,7
  (road city-1-loc-8 city-1-loc-10)
  ; 675,345 -> 895,506
  (road city-1-loc-11 city-1-loc-2)
  ; 895,506 -> 675,345
  (road city-1-loc-2 city-1-loc-11)
  ; 675,345 -> 560,131
  (road city-1-loc-11 city-1-loc-3)
  ; 560,131 -> 675,345
  (road city-1-loc-3 city-1-loc-11)
  ; 973,757 -> 895,506
  (road city-1-loc-12 city-1-loc-2)
  ; 895,506 -> 973,757
  (road city-1-loc-2 city-1-loc-12)
  ; 866,797 -> 895,506
  (road city-1-loc-13 city-1-loc-2)
  ; 895,506 -> 866,797
  (road city-1-loc-2 city-1-loc-13)
  ; 866,797 -> 640,921
  (road city-1-loc-13 city-1-loc-7)
  ; 640,921 -> 866,797
  (road city-1-loc-7 city-1-loc-13)
  ; 866,797 -> 973,757
  (road city-1-loc-13 city-1-loc-12)
  ; 973,757 -> 866,797
  (road city-1-loc-12 city-1-loc-13)
  ; 436,867 -> 251,677
  (road city-1-loc-14 city-1-loc-4)
  ; 251,677 -> 436,867
  (road city-1-loc-4 city-1-loc-14)
  ; 436,867 -> 141,876
  (road city-1-loc-14 city-1-loc-6)
  ; 141,876 -> 436,867
  (road city-1-loc-6 city-1-loc-14)
  ; 436,867 -> 640,921
  (road city-1-loc-14 city-1-loc-7)
  ; 640,921 -> 436,867
  (road city-1-loc-7 city-1-loc-14)
  ; 822,267 -> 895,506
  (road city-1-loc-15 city-1-loc-2)
  ; 895,506 -> 822,267
  (road city-1-loc-2 city-1-loc-15)
  ; 822,267 -> 560,131
  (road city-1-loc-15 city-1-loc-3)
  ; 560,131 -> 822,267
  (road city-1-loc-3 city-1-loc-15)
  ; 822,267 -> 675,345
  (road city-1-loc-15 city-1-loc-11)
  ; 675,345 -> 822,267
  (road city-1-loc-11 city-1-loc-15)
  ; 599,455 -> 895,506
  (road city-1-loc-16 city-1-loc-2)
  ; 895,506 -> 599,455
  (road city-1-loc-2 city-1-loc-16)
  ; 599,455 -> 675,345
  (road city-1-loc-16 city-1-loc-11)
  ; 675,345 -> 599,455
  (road city-1-loc-11 city-1-loc-16)
  ; 599,455 -> 822,267
  (road city-1-loc-16 city-1-loc-15)
  ; 822,267 -> 599,455
  (road city-1-loc-15 city-1-loc-16)
  ; 370,762 -> 251,677
  (road city-1-loc-17 city-1-loc-4)
  ; 251,677 -> 370,762
  (road city-1-loc-4 city-1-loc-17)
  ; 370,762 -> 141,876
  (road city-1-loc-17 city-1-loc-6)
  ; 141,876 -> 370,762
  (road city-1-loc-6 city-1-loc-17)
  ; 370,762 -> 640,921
  (road city-1-loc-17 city-1-loc-7)
  ; 640,921 -> 370,762
  (road city-1-loc-7 city-1-loc-17)
  ; 370,762 -> 436,867
  (road city-1-loc-17 city-1-loc-14)
  ; 436,867 -> 370,762
  (road city-1-loc-14 city-1-loc-17)
  ; 209,484 -> 285,216
  (road city-1-loc-18 city-1-loc-1)
  ; 285,216 -> 209,484
  (road city-1-loc-1 city-1-loc-18)
  ; 209,484 -> 251,677
  (road city-1-loc-18 city-1-loc-4)
  ; 251,677 -> 209,484
  (road city-1-loc-4 city-1-loc-18)
  ; 209,484 -> 239,307
  (road city-1-loc-18 city-1-loc-8)
  ; 239,307 -> 209,484
  (road city-1-loc-8 city-1-loc-18)
  ; 209,484 -> 118,400
  (road city-1-loc-18 city-1-loc-9)
  ; 118,400 -> 209,484
  (road city-1-loc-9 city-1-loc-18)
  ; 2374,777 -> 2220,554
  (road city-2-loc-2 city-2-loc-1)
  ; 2220,554 -> 2374,777
  (road city-2-loc-1 city-2-loc-2)
  ; 2307,925 -> 2374,777
  (road city-2-loc-3 city-2-loc-2)
  ; 2374,777 -> 2307,925
  (road city-2-loc-2 city-2-loc-3)
  ; 2140,736 -> 2220,554
  (road city-2-loc-4 city-2-loc-1)
  ; 2220,554 -> 2140,736
  (road city-2-loc-1 city-2-loc-4)
  ; 2140,736 -> 2374,777
  (road city-2-loc-4 city-2-loc-2)
  ; 2374,777 -> 2140,736
  (road city-2-loc-2 city-2-loc-4)
  ; 2140,736 -> 2307,925
  (road city-2-loc-4 city-2-loc-3)
  ; 2307,925 -> 2140,736
  (road city-2-loc-3 city-2-loc-4)
  ; 2260,356 -> 2220,554
  (road city-2-loc-5 city-2-loc-1)
  ; 2220,554 -> 2260,356
  (road city-2-loc-1 city-2-loc-5)
  ; 2577,848 -> 2374,777
  (road city-2-loc-6 city-2-loc-2)
  ; 2374,777 -> 2577,848
  (road city-2-loc-2 city-2-loc-6)
  ; 2577,848 -> 2307,925
  (road city-2-loc-6 city-2-loc-3)
  ; 2307,925 -> 2577,848
  (road city-2-loc-3 city-2-loc-6)
  ; 2633,694 -> 2374,777
  (road city-2-loc-7 city-2-loc-2)
  ; 2374,777 -> 2633,694
  (road city-2-loc-2 city-2-loc-7)
  ; 2633,694 -> 2577,848
  (road city-2-loc-7 city-2-loc-6)
  ; 2577,848 -> 2633,694
  (road city-2-loc-6 city-2-loc-7)
  ; 2755,326 -> 2619,195
  (road city-2-loc-10 city-2-loc-8)
  ; 2619,195 -> 2755,326
  (road city-2-loc-8 city-2-loc-10)
  ; 2756,712 -> 2577,848
  (road city-2-loc-11 city-2-loc-6)
  ; 2577,848 -> 2756,712
  (road city-2-loc-6 city-2-loc-11)
  ; 2756,712 -> 2633,694
  (road city-2-loc-11 city-2-loc-7)
  ; 2633,694 -> 2756,712
  (road city-2-loc-7 city-2-loc-11)
  ; 2756,712 -> 2983,755
  (road city-2-loc-11 city-2-loc-9)
  ; 2983,755 -> 2756,712
  (road city-2-loc-9 city-2-loc-11)
  ; 2504,342 -> 2260,356
  (road city-2-loc-12 city-2-loc-5)
  ; 2260,356 -> 2504,342
  (road city-2-loc-5 city-2-loc-12)
  ; 2504,342 -> 2619,195
  (road city-2-loc-12 city-2-loc-8)
  ; 2619,195 -> 2504,342
  (road city-2-loc-8 city-2-loc-12)
  ; 2504,342 -> 2755,326
  (road city-2-loc-12 city-2-loc-10)
  ; 2755,326 -> 2504,342
  (road city-2-loc-10 city-2-loc-12)
  ; 2134,151 -> 2260,356
  (road city-2-loc-13 city-2-loc-5)
  ; 2260,356 -> 2134,151
  (road city-2-loc-5 city-2-loc-13)
  ; 2651,991 -> 2577,848
  (road city-2-loc-14 city-2-loc-6)
  ; 2577,848 -> 2651,991
  (road city-2-loc-6 city-2-loc-14)
  ; 2651,991 -> 2633,694
  (road city-2-loc-14 city-2-loc-7)
  ; 2633,694 -> 2651,991
  (road city-2-loc-7 city-2-loc-14)
  ; 2651,991 -> 2756,712
  (road city-2-loc-14 city-2-loc-11)
  ; 2756,712 -> 2651,991
  (road city-2-loc-11 city-2-loc-14)
  ; 2822,842 -> 2577,848
  (road city-2-loc-15 city-2-loc-6)
  ; 2577,848 -> 2822,842
  (road city-2-loc-6 city-2-loc-15)
  ; 2822,842 -> 2633,694
  (road city-2-loc-15 city-2-loc-7)
  ; 2633,694 -> 2822,842
  (road city-2-loc-7 city-2-loc-15)
  ; 2822,842 -> 2983,755
  (road city-2-loc-15 city-2-loc-9)
  ; 2983,755 -> 2822,842
  (road city-2-loc-9 city-2-loc-15)
  ; 2822,842 -> 2756,712
  (road city-2-loc-15 city-2-loc-11)
  ; 2756,712 -> 2822,842
  (road city-2-loc-11 city-2-loc-15)
  ; 2822,842 -> 2651,991
  (road city-2-loc-15 city-2-loc-14)
  ; 2651,991 -> 2822,842
  (road city-2-loc-14 city-2-loc-15)
  ; 2864,302 -> 2619,195
  (road city-2-loc-16 city-2-loc-8)
  ; 2619,195 -> 2864,302
  (road city-2-loc-8 city-2-loc-16)
  ; 2864,302 -> 2755,326
  (road city-2-loc-16 city-2-loc-10)
  ; 2755,326 -> 2864,302
  (road city-2-loc-10 city-2-loc-16)
  ; 2847,622 -> 2633,694
  (road city-2-loc-17 city-2-loc-7)
  ; 2633,694 -> 2847,622
  (road city-2-loc-7 city-2-loc-17)
  ; 2847,622 -> 2983,755
  (road city-2-loc-17 city-2-loc-9)
  ; 2983,755 -> 2847,622
  (road city-2-loc-9 city-2-loc-17)
  ; 2847,622 -> 2755,326
  (road city-2-loc-17 city-2-loc-10)
  ; 2755,326 -> 2847,622
  (road city-2-loc-10 city-2-loc-17)
  ; 2847,622 -> 2756,712
  (road city-2-loc-17 city-2-loc-11)
  ; 2756,712 -> 2847,622
  (road city-2-loc-11 city-2-loc-17)
  ; 2847,622 -> 2822,842
  (road city-2-loc-17 city-2-loc-15)
  ; 2822,842 -> 2847,622
  (road city-2-loc-15 city-2-loc-17)
  ; 2070,845 -> 2374,777
  (road city-2-loc-18 city-2-loc-2)
  ; 2374,777 -> 2070,845
  (road city-2-loc-2 city-2-loc-18)
  ; 2070,845 -> 2307,925
  (road city-2-loc-18 city-2-loc-3)
  ; 2307,925 -> 2070,845
  (road city-2-loc-3 city-2-loc-18)
  ; 2070,845 -> 2140,736
  (road city-2-loc-18 city-2-loc-4)
  ; 2140,736 -> 2070,845
  (road city-2-loc-4 city-2-loc-18)
  ; 973,757 <-> 2070,845
  (road city-1-loc-12 city-2-loc-18)
  (road city-2-loc-18 city-1-loc-12)
  (at package-1 city-1-loc-4)
  (at package-2 city-1-loc-7)
  (at package-3 city-1-loc-11)
  (at package-4 city-1-loc-4)
  (at package-5 city-1-loc-5)
  (at package-6 city-1-loc-11)
  (at truck-1 city-2-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-15)
  (capacity truck-2 capacity-2)
  (at truck-3 city-2-loc-13)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-9)
  (at package-2 city-2-loc-2)
  (at package-3 city-2-loc-4)
  (at package-4 city-2-loc-8)
  (at package-5 city-2-loc-2)
  (at package-6 city-2-loc-13)
 ))
 
)
