(define (problem strips-movie-x-4)
   (:domain movie-strips)
   (:objects object_5 object_12 object_10 object_9 object_34 object_2 object_27 object_36 object_4 object_16 object_1 object_18 object_15 object_24 object_33 object_19 object_35 object_30 object_14 object_21 object_32 object_39 object_3 object_0
             object_22 object_25 object_26 object_13 object_8 object_31 object_37 object_17 object_20 object_29 object_7 object_23 object_38 object_6 object_28 object_11)
   (:init (chips object_5)
          (chips object_12)
          (chips object_10)
          (chips object_9)
          (chips object_34)
          (chips object_2)
          (chips object_27)
          (chips object_36)
          (dip object_4)
          (dip object_16)
          (dip object_1)
          (dip object_18)
          (dip object_15)
          (dip object_24)
          (dip object_33)
          (dip object_19)
          (pop object_35)
          (pop object_30)
          (pop object_14)
          (pop object_21)
          (pop object_32)
          (pop object_39)
          (pop object_3)
          (pop object_0)
          (cheese object_22)
          (cheese object_25)
          (cheese object_26)
          (cheese object_13)
          (cheese object_8)
          (cheese object_31)
          (cheese object_37)
          (cheese object_17)
          (crackers object_20)
          (crackers object_29)
          (crackers object_7)
          (crackers object_23)
          (crackers object_38)
          (crackers object_6)
          (crackers object_28)
          (crackers object_11)
          (counter-at-other-than-two-hours))
   (:goal (and (movie-rewound)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers))))