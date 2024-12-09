(define (problem freecell-4-1)
(:domain freecell)
(:objects
    object_10
    object_28
    object_5
    object_11
    object_18
    object_19
    object_32
    object_37
    object_33
    object_26
    object_24
    object_13
    object_27
    object_12
    object_21
    object_6
    object_34
    object_17
    object_3
    object_20
    object_35
    object_14
    object_29
    object_8
    object_30
    object_36
    object_1
    object_7
    object_15
    object_0
    object_4
    object_9
    object_23
    object_16
    object_25
    object_31
    object_2
    object_22
)
(:init
    (value object_22 object_2)
    (value object_31 object_25)
    (value object_37 object_17)
    (value object_11 object_34)
    (value object_16 object_23)
    (value object_9 object_2)
    (value object_4 object_25)
    (value object_32 object_17)
    (value object_5 object_34)
    (value object_0 object_23)
    (value object_15 object_2)
    (value object_7 object_25)
    (value object_19 object_17)
    (value object_28 object_34)
    (value object_1 object_23)
    (value object_36 object_2)
    (value object_30 object_25)
    (value object_18 object_17)
    (value object_10 object_34)
    (value object_8 object_23)
    (successor object_23 object_2)
    (successor object_29 object_14)
    (successor object_35 object_29)
    (successor object_20 object_35)
    (successor object_3 object_20)
    (successor object_25 object_23)
    (successor object_17 object_25)
    (successor object_34 object_17)
    (successor object_6 object_34)
    (successor object_21 object_6)
    (successor object_12 object_21)
    (successor object_27 object_12)
    (successor object_14 object_27)
    (suit object_22 object_13)
    (suit object_31 object_13)
    (suit object_37 object_13)
    (suit object_11 object_13)
    (suit object_16 object_13)
    (suit object_9 object_24)
    (suit object_4 object_24)
    (suit object_32 object_24)
    (suit object_5 object_24)
    (suit object_0 object_24)
    (suit object_15 object_26)
    (suit object_7 object_26)
    (suit object_19 object_26)
    (suit object_28 object_26)
    (suit object_1 object_26)
    (suit object_36 object_33)
    (suit object_30 object_33)
    (suit object_18 object_33)
    (suit object_10 object_33)
    (suit object_8 object_33)
    (canstack object_31 object_32)
    (canstack object_31 object_19)
    (canstack object_37 object_5)
    (canstack object_37 object_28)
    (canstack object_16 object_4)
    (canstack object_16 object_7)
    (canstack object_4 object_37)
    (canstack object_4 object_18)
    (canstack object_32 object_11)
    (canstack object_32 object_10)
    (canstack object_0 object_31)
    (canstack object_0 object_30)
    (canstack object_7 object_37)
    (canstack object_7 object_18)
    (canstack object_19 object_11)
    (canstack object_19 object_10)
    (canstack object_1 object_31)
    (canstack object_1 object_30)
    (canstack object_30 object_32)
    (canstack object_30 object_19)
    (canstack object_18 object_5)
    (canstack object_18 object_28)
    (canstack object_8 object_4)
    (canstack object_8 object_7)
    (home object_22)
    (home object_9)
    (home object_15)
    (home object_36)
    (cellspace object_34)
    (colspace object_23)
    (on object_31 object_16)
    (on object_37 object_19)
    (on object_11 object_30)
    (on object_16 object_8)
    (on object_32 object_31)
    (on object_5 object_1)
    (on object_7 object_10)
    (on object_28 object_0)
    (on object_18 object_11)
    (clear object_37)
    (clear object_4)
    (clear object_32)
    (clear object_5)
    (clear object_7)
    (clear object_28)
    (clear object_18)
    (bottomcol object_4)
    (bottomcol object_0)
    (bottomcol object_19)
    (bottomcol object_1)
    (bottomcol object_30)
    (bottomcol object_10)
    (bottomcol object_8)
)
(:goal (and
    (home object_11)
    (home object_5)
    (home object_28)
    (home object_10)
)))
