(define (problem freecell-4-4)
(:domain freecell)
(:objects
    object_37
    object_16
    object_31
    object_25
    object_34
    object_18
    object_15
    object_7
    object_13
    object_19
    object_5
    object_30
    object_4
    object_29
    object_12
    object_20
    object_11
    object_28
    object_2
    object_14
    object_10
    object_21
    object_6
    object_17
    object_9
    object_26
    object_35
    object_36
    object_1
    object_0
    object_27
    object_22
    object_3
    object_23
    object_8
    object_32
    object_24
    object_33
)
(:init
    (value object_33 object_24)
    (value object_32 object_8)
    (value object_7 object_28)
    (value object_25 object_11)
    (value object_23 object_3)
    (value object_22 object_24)
    (value object_27 object_8)
    (value object_15 object_28)
    (value object_31 object_11)
    (value object_0 object_3)
    (value object_1 object_24)
    (value object_36 object_8)
    (value object_18 object_28)
    (value object_16 object_11)
    (value object_35 object_3)
    (value object_26 object_24)
    (value object_9 object_8)
    (value object_34 object_28)
    (value object_37 object_11)
    (value object_17 object_3)
    (successor object_3 object_24)
    (successor object_6 object_21)
    (successor object_10 object_6)
    (successor object_14 object_10)
    (successor object_2 object_14)
    (successor object_8 object_3)
    (successor object_28 object_8)
    (successor object_11 object_28)
    (successor object_20 object_11)
    (successor object_12 object_20)
    (successor object_29 object_12)
    (successor object_4 object_29)
    (successor object_21 object_4)
    (suit object_33 object_30)
    (suit object_32 object_30)
    (suit object_7 object_30)
    (suit object_25 object_30)
    (suit object_23 object_30)
    (suit object_22 object_5)
    (suit object_27 object_5)
    (suit object_15 object_5)
    (suit object_31 object_5)
    (suit object_0 object_5)
    (suit object_1 object_19)
    (suit object_36 object_19)
    (suit object_18 object_19)
    (suit object_16 object_19)
    (suit object_35 object_19)
    (suit object_26 object_13)
    (suit object_9 object_13)
    (suit object_34 object_13)
    (suit object_37 object_13)
    (suit object_17 object_13)
    (canstack object_32 object_15)
    (canstack object_32 object_18)
    (canstack object_7 object_31)
    (canstack object_7 object_16)
    (canstack object_23 object_27)
    (canstack object_23 object_36)
    (canstack object_27 object_7)
    (canstack object_27 object_34)
    (canstack object_15 object_25)
    (canstack object_15 object_37)
    (canstack object_0 object_32)
    (canstack object_0 object_9)
    (canstack object_36 object_7)
    (canstack object_36 object_34)
    (canstack object_18 object_25)
    (canstack object_18 object_37)
    (canstack object_35 object_32)
    (canstack object_35 object_9)
    (canstack object_9 object_15)
    (canstack object_9 object_18)
    (canstack object_34 object_31)
    (canstack object_34 object_16)
    (canstack object_17 object_27)
    (canstack object_17 object_36)
    (home object_33)
    (home object_22)
    (home object_1)
    (home object_26)
    (cellspace object_11)
    (colspace object_3)
    (on object_7 object_34)
    (on object_25 object_9)
    (on object_27 object_18)
    (on object_0 object_27)
    (on object_36 object_25)
    (on object_18 object_31)
    (on object_16 object_35)
    (on object_37 object_17)
    (on object_17 object_15)
    (clear object_32)
    (clear object_7)
    (clear object_23)
    (clear object_0)
    (clear object_36)
    (clear object_16)
    (clear object_37)
    (bottomcol object_32)
    (bottomcol object_23)
    (bottomcol object_15)
    (bottomcol object_31)
    (bottomcol object_35)
    (bottomcol object_9)
    (bottomcol object_34)
)
(:goal (and
    (home object_25)
    (home object_31)
    (home object_16)
    (home object_37)
)))
