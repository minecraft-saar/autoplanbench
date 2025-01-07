(define (problem strips-movie-x-25)
   (:domain movie-strips)
   (:objects object_33 object_23 object_52 object_25 object_13 object_43 object_134 object_101 object_3 object_7 object_63 object_88 object_54 object_82 object_67 object_110
             object_111 object_84 object_41 object_11 object_22 object_116 object_56 object_44 object_70 object_53 object_109 object_89 object_12 object_106 object_34 object_55 object_107 object_24 object_115 object_121
             object_85 object_32 object_100 object_118 object_5 object_26 object_96 object_92 object_98 object_61 object_138 object_78 object_95 object_94 object_42 object_87 object_38 object_58 object_50
             object_75 object_60 object_131 object_1 object_76 object_143 object_30 object_28 object_65 object_102 object_114 object_130 object_141 object_144 object_105 object_137 object_69
             object_81 object_16 object_2 object_117 object_47 object_77 object_15 object_51 object_68 object_133 object_103 object_4 object_79 object_97 object_45 object_21 object_17 object_99 object_104 object_86
             object_29 object_125 object_132 object_124 object_83 object_112 object_120 object_8 object_129 object_20 object_36 object_57 object_73 object_71 object_59 object_0 object_39 object_140
             object_108 object_64 object_6 object_40 object_126 object_119 object_74 object_93 object_49 object_46 object_123 object_128 object_9 object_139 object_127 object_142 object_35 object_62
             object_80 object_19 object_27 object_31 object_66 object_72 object_91 object_122 object_136 object_18 object_14 object_48 object_90 object_113 object_135 object_10 object_37)
   (:init (chips object_33)
          (chips object_23)
          (chips object_52)
          (chips object_25)
          (chips object_13)
          (chips object_43)
          (chips object_134)
          (chips object_101)
          (chips object_3)
          (chips object_7)
          (chips object_63)
          (chips object_88)
          (chips object_54)
          (chips object_82)
          (chips object_67)
          (chips object_110)
          (chips object_111)
          (chips object_84)
          (chips object_41)
          (chips object_11)
          (chips object_22)
          (chips object_116)
          (chips object_56)
          (chips object_44)
          (chips object_70)
          (chips object_53)
          (chips object_109)
          (chips object_89)
          (chips object_12)
          (dip object_106)
          (dip object_34)
          (dip object_55)
          (dip object_107)
          (dip object_24)
          (dip object_115)
          (dip object_121)
          (dip object_85)
          (dip object_32)
          (dip object_100)
          (dip object_118)
          (dip object_5)
          (dip object_26)
          (dip object_96)
          (dip object_92)
          (dip object_98)
          (dip object_61)
          (dip object_138)
          (dip object_78)
          (dip object_95)
          (dip object_94)
          (dip object_42)
          (dip object_87)
          (dip object_38)
          (dip object_58)
          (dip object_50)
          (dip object_75)
          (dip object_60)
          (dip object_131)
          (pop object_1)
          (pop object_76)
          (pop object_143)
          (pop object_30)
          (pop object_28)
          (pop object_65)
          (pop object_102)
          (pop object_114)
          (pop object_130)
          (pop object_141)
          (pop object_144)
          (pop object_105)
          (pop object_137)
          (pop object_69)
          (pop object_81)
          (pop object_16)
          (pop object_2)
          (pop object_117)
          (pop object_47)
          (pop object_77)
          (pop object_15)
          (pop object_51)
          (pop object_68)
          (pop object_133)
          (pop object_103)
          (pop object_4)
          (pop object_79)
          (pop object_97)
          (pop object_45)
          (cheese object_21)
          (cheese object_17)
          (cheese object_99)
          (cheese object_104)
          (cheese object_86)
          (cheese object_29)
          (cheese object_125)
          (cheese object_132)
          (cheese object_124)
          (cheese object_83)
          (cheese object_112)
          (cheese object_120)
          (cheese object_8)
          (cheese object_129)
          (cheese object_20)
          (cheese object_36)
          (cheese object_57)
          (cheese object_73)
          (cheese object_71)
          (cheese object_59)
          (cheese object_0)
          (cheese object_39)
          (cheese object_140)
          (cheese object_108)
          (cheese object_64)
          (cheese object_6)
          (cheese object_40)
          (cheese object_126)
          (cheese object_119)
          (crackers object_74)
          (crackers object_93)
          (crackers object_49)
          (crackers object_46)
          (crackers object_123)
          (crackers object_128)
          (crackers object_9)
          (crackers object_139)
          (crackers object_127)
          (crackers object_142)
          (crackers object_35)
          (crackers object_62)
          (crackers object_80)
          (crackers object_19)
          (crackers object_27)
          (crackers object_31)
          (crackers object_66)
          (crackers object_72)
          (crackers object_91)
          (crackers object_122)
          (crackers object_136)
          (crackers object_18)
          (crackers object_14)
          (crackers object_48)
          (crackers object_90)
          (crackers object_113)
          (crackers object_135)
          (crackers object_10)
          (crackers object_37)
          (counter-at-other-than-two-hours))
   (:goal (and (movie-rewound)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers))))