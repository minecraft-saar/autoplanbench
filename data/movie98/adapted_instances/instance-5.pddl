(define (problem strips-movie-x-5)
   (:domain movie-strips)
   (:objects object_4 object_11 object_29 object_27 object_8 object_38 object_3 object_2 object_32 object_26 object_17 object_37 object_43 object_35 object_39 object_36 object_9 object_40 object_31 object_18 object_44 object_14 object_19 object_25
             object_22 object_33 object_34 object_7 object_5 object_12 object_10 object_13 object_21 object_16 object_41 object_6 object_15 object_1 object_28 object_20 object_0 object_30 object_42 object_23 object_24)
   (:init (chips object_4)
          (chips object_11)
          (chips object_29)
          (chips object_27)
          (chips object_8)
          (chips object_38)
          (chips object_3)
          (chips object_2)
          (chips object_32)
          (dip object_26)
          (dip object_17)
          (dip object_37)
          (dip object_43)
          (dip object_35)
          (dip object_39)
          (dip object_36)
          (dip object_9)
          (dip object_40)
          (pop object_31)
          (pop object_18)
          (pop object_44)
          (pop object_14)
          (pop object_19)
          (pop object_25)
          (pop object_22)
          (pop object_33)
          (pop object_34)
          (cheese object_7)
          (cheese object_5)
          (cheese object_12)
          (cheese object_10)
          (cheese object_13)
          (cheese object_21)
          (cheese object_16)
          (cheese object_41)
          (cheese object_6)
          (crackers object_15)
          (crackers object_1)
          (crackers object_28)
          (crackers object_20)
          (crackers object_0)
          (crackers object_30)
          (crackers object_42)
          (crackers object_23)
          (crackers object_24)
          (counter-at-other-than-two-hours))
   (:goal (and (movie-rewound)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers))))