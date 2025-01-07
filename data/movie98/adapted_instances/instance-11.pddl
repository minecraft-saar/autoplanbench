(define (problem strips-movie-x-11)
   (:domain movie-strips)
   (:objects object_10 object_27 object_55 object_56 object_72 object_60 object_42 object_74 object_50 object_69 object_13 object_54 object_51 object_73 object_12 object_7 object_23 object_15 object_61
             object_57 object_39 object_6 object_63 object_67 object_40 object_3 object_26 object_65 object_11 object_66 object_47 object_2 object_19 object_49 object_64 object_36 object_62 object_68 object_30 object_48
             object_9 object_58 object_71 object_33 object_32 object_35 object_25 object_44 object_52 object_59 object_14 object_8 object_18 object_45 object_34 object_20 object_37 object_16 object_17 object_53 object_24
             object_4 object_31 object_38 object_5 object_22 object_21 object_1 object_41 object_29 object_0 object_28 object_46 object_43 object_70)
   (:init (chips object_10)
          (chips object_27)
          (chips object_55)
          (chips object_56)
          (chips object_72)
          (chips object_60)
          (chips object_42)
          (chips object_74)
          (chips object_50)
          (chips object_69)
          (chips object_13)
          (chips object_54)
          (chips object_51)
          (chips object_73)
          (chips object_12)
          (dip object_7)
          (dip object_23)
          (dip object_15)
          (dip object_61)
          (dip object_57)
          (dip object_39)
          (dip object_6)
          (dip object_63)
          (dip object_67)
          (dip object_40)
          (dip object_3)
          (dip object_26)
          (dip object_65)
          (dip object_11)
          (dip object_66)
          (pop object_47)
          (pop object_2)
          (pop object_19)
          (pop object_49)
          (pop object_64)
          (pop object_36)
          (pop object_62)
          (pop object_68)
          (pop object_30)
          (pop object_48)
          (pop object_9)
          (pop object_58)
          (pop object_71)
          (pop object_33)
          (pop object_32)
          (cheese object_35)
          (cheese object_25)
          (cheese object_44)
          (cheese object_52)
          (cheese object_59)
          (cheese object_14)
          (cheese object_8)
          (cheese object_18)
          (cheese object_45)
          (cheese object_34)
          (cheese object_20)
          (cheese object_37)
          (cheese object_16)
          (cheese object_17)
          (cheese object_53)
          (crackers object_24)
          (crackers object_4)
          (crackers object_31)
          (crackers object_38)
          (crackers object_5)
          (crackers object_22)
          (crackers object_21)
          (crackers object_1)
          (crackers object_41)
          (crackers object_29)
          (crackers object_0)
          (crackers object_28)
          (crackers object_46)
          (crackers object_43)
          (crackers object_70)
          (counter-at-other-than-two-hours))
   (:goal (and (movie-rewound)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers))))