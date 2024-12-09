(define (problem freecell-4-5)
(:domain freecell)
(:objects
    object_25
    object_31
    object_12
    object_3
    object_1
    object_35
    object_29
    object_24
    object_23
    object_34
    object_5
    object_17
    object_18
    object_28
    object_0
    object_7
    object_19
    object_37
    object_14
    object_26
    object_32
    object_13
    object_30
    object_11
    object_22
    object_4
    object_9
    object_36
    object_21
    object_20
    object_8
    object_16
    object_6
    object_10
    object_33
    object_27
    object_15
    object_2
)
(:init
    (value object_2 object_15)
    (value object_27 object_33)
    (value object_24 object_37)
    (value object_3 object_19)
    (value object_10 object_6)
    (value object_16 object_15)
    (value object_8 object_33)
    (value object_29 object_37)
    (value object_12 object_19)
    (value object_20 object_6)
    (value object_21 object_15)
    (value object_36 object_33)
    (value object_35 object_37)
    (value object_31 object_19)
    (value object_9 object_6)
    (value object_4 object_15)
    (value object_22 object_33)
    (value object_1 object_37)
    (value object_25 object_19)
    (value object_11 object_6)
    (successor object_6 object_15)
    (successor object_30 object_13)
    (successor object_32 object_30)
    (successor object_26 object_32)
    (successor object_14 object_26)
    (successor object_33 object_6)
    (successor object_37 object_33)
    (successor object_19 object_37)
    (successor object_7 object_19)
    (successor object_0 object_7)
    (successor object_28 object_0)
    (successor object_18 object_28)
    (successor object_13 object_18)
    (suit object_2 object_17)
    (suit object_27 object_17)
    (suit object_24 object_17)
    (suit object_3 object_17)
    (suit object_10 object_17)
    (suit object_16 object_5)
    (suit object_8 object_5)
    (suit object_29 object_5)
    (suit object_12 object_5)
    (suit object_20 object_5)
    (suit object_21 object_34)
    (suit object_36 object_34)
    (suit object_35 object_34)
    (suit object_31 object_34)
    (suit object_9 object_34)
    (suit object_4 object_23)
    (suit object_22 object_23)
    (suit object_1 object_23)
    (suit object_25 object_23)
    (suit object_11 object_23)
    (canstack object_27 object_29)
    (canstack object_27 object_35)
    (canstack object_24 object_12)
    (canstack object_24 object_31)
    (canstack object_10 object_8)
    (canstack object_10 object_36)
    (canstack object_8 object_24)
    (canstack object_8 object_1)
    (canstack object_29 object_3)
    (canstack object_29 object_25)
    (canstack object_20 object_27)
    (canstack object_20 object_22)
    (canstack object_36 object_24)
    (canstack object_36 object_1)
    (canstack object_35 object_3)
    (canstack object_35 object_25)
    (canstack object_9 object_27)
    (canstack object_9 object_22)
    (canstack object_22 object_29)
    (canstack object_22 object_35)
    (canstack object_1 object_12)
    (canstack object_1 object_31)
    (canstack object_11 object_8)
    (canstack object_11 object_36)
    (home object_2)
    (home object_16)
    (home object_21)
    (home object_4)
    (cellspace object_19)
    (colspace object_15)
    (on object_24 object_22)
    (on object_10 object_25)
    (on object_12 object_3)
    (on object_20 object_11)
    (on object_36 object_1)
    (on object_31 object_24)
    (on object_1 object_9)
    (on object_25 object_29)
    (clear object_27)
    (clear object_10)
    (clear object_8)
    (clear object_12)
    (clear object_20)
    (clear object_36)
    (clear object_35)
    (clear object_31)
    (bottomcol object_27)
    (bottomcol object_3)
    (bottomcol object_8)
    (bottomcol object_29)
    (bottomcol object_35)
    (bottomcol object_9)
    (bottomcol object_22)
    (bottomcol object_11)
)
(:goal (and
    (home object_3)
    (home object_12)
    (home object_31)
    (home object_25)
)))
