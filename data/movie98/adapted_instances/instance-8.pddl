(define (problem strips-movie-x-8)
   (:domain movie-strips)
   (:objects object_22 object_0 object_4 object_46 object_52 object_26 object_47 object_3 object_33 object_13 object_56 object_7 object_12 object_30 object_17 object_38 object_31 object_29 object_51 object_58 object_14
             object_10 object_48 object_6 object_9 object_24 object_8 object_45 object_27 object_28 object_44 object_15 object_36 object_1 object_42 object_59 object_16 object_41 object_18 object_39 object_37 object_2 object_5
             object_23 object_50 object_32 object_19 object_21 object_43 object_11 object_20 object_53 object_34 object_54 object_25 object_35 object_55 object_49 object_57 object_40)
   (:init (chips object_22)
          (chips object_0)
          (chips object_4)
          (chips object_46)
          (chips object_52)
          (chips object_26)
          (chips object_47)
          (chips object_3)
          (chips object_33)
          (chips object_13)
          (chips object_56)
          (chips object_7)
          (dip object_12)
          (dip object_30)
          (dip object_17)
          (dip object_38)
          (dip object_31)
          (dip object_29)
          (dip object_51)
          (dip object_58)
          (dip object_14)
          (dip object_10)
          (dip object_48)
          (dip object_6)
          (pop object_9)
          (pop object_24)
          (pop object_8)
          (pop object_45)
          (pop object_27)
          (pop object_28)
          (pop object_44)
          (pop object_15)
          (pop object_36)
          (pop object_1)
          (pop object_42)
          (pop object_59)
          (cheese object_16)
          (cheese object_41)
          (cheese object_18)
          (cheese object_39)
          (cheese object_37)
          (cheese object_2)
          (cheese object_5)
          (cheese object_23)
          (cheese object_50)
          (cheese object_32)
          (cheese object_19)
          (cheese object_21)
          (crackers object_43)
          (crackers object_11)
          (crackers object_20)
          (crackers object_53)
          (crackers object_34)
          (crackers object_54)
          (crackers object_25)
          (crackers object_35)
          (crackers object_55)
          (crackers object_49)
          (crackers object_57)
          (crackers object_40)
          (counter-at-other-than-two-hours))
   (:goal (and (movie-rewound)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers))))