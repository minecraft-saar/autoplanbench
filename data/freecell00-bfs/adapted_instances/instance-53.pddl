(define (problem freecell-4-3)
(:domain freecell)
(:objects
    object_4
    object_28
    object_14
    object_26
    object_12
    object_0
    object_2
    object_25
    object_36
    object_18
    object_29
    object_27
    object_10
    object_6
    object_21
    object_31
    object_30
    object_32
    object_11
    object_19
    object_1
    object_24
    object_9
    object_22
    object_34
    object_16
    object_15
    object_20
    object_8
    object_3
    object_5
    object_7
    object_17
    object_35
    object_33
    object_23
    object_13
    object_37
)
(:init
    (value object_37 object_13)
    (value object_23 object_33)
    (value object_25 object_32)
    (value object_26 object_30)
    (value object_35 object_17)
    (value object_7 object_13)
    (value object_5 object_33)
    (value object_2 object_32)
    (value object_14 object_30)
    (value object_3 object_17)
    (value object_8 object_13)
    (value object_20 object_33)
    (value object_0 object_32)
    (value object_28 object_30)
    (value object_15 object_17)
    (value object_16 object_13)
    (value object_34 object_33)
    (value object_12 object_32)
    (value object_4 object_30)
    (value object_22 object_17)
    (successor object_17 object_13)
    (successor object_9 object_24)
    (successor object_1 object_9)
    (successor object_19 object_1)
    (successor object_11 object_19)
    (successor object_33 object_17)
    (successor object_32 object_33)
    (successor object_30 object_32)
    (successor object_31 object_30)
    (successor object_21 object_31)
    (successor object_6 object_21)
    (successor object_10 object_6)
    (successor object_24 object_10)
    (suit object_37 object_27)
    (suit object_23 object_27)
    (suit object_25 object_27)
    (suit object_26 object_27)
    (suit object_35 object_27)
    (suit object_7 object_29)
    (suit object_5 object_29)
    (suit object_2 object_29)
    (suit object_14 object_29)
    (suit object_3 object_29)
    (suit object_8 object_18)
    (suit object_20 object_18)
    (suit object_0 object_18)
    (suit object_28 object_18)
    (suit object_15 object_18)
    (suit object_16 object_36)
    (suit object_34 object_36)
    (suit object_12 object_36)
    (suit object_4 object_36)
    (suit object_22 object_36)
    (canstack object_23 object_2)
    (canstack object_23 object_0)
    (canstack object_25 object_14)
    (canstack object_25 object_28)
    (canstack object_35 object_5)
    (canstack object_35 object_20)
    (canstack object_5 object_25)
    (canstack object_5 object_12)
    (canstack object_2 object_26)
    (canstack object_2 object_4)
    (canstack object_3 object_23)
    (canstack object_3 object_34)
    (canstack object_20 object_25)
    (canstack object_20 object_12)
    (canstack object_0 object_26)
    (canstack object_0 object_4)
    (canstack object_15 object_23)
    (canstack object_15 object_34)
    (canstack object_34 object_2)
    (canstack object_34 object_0)
    (canstack object_12 object_14)
    (canstack object_12 object_28)
    (canstack object_22 object_5)
    (canstack object_22 object_20)
    (home object_37)
    (home object_7)
    (home object_8)
    (home object_16)
    (cellspace object_30)
    (colspace object_13)
    (on object_23 object_22)
    (on object_26 object_25)
    (on object_3 object_14)
    (on object_0 object_34)
    (on object_15 object_35)
    (on object_12 object_3)
    (on object_4 object_23)
    (on object_22 object_5)
    (clear object_26)
    (clear object_2)
    (clear object_20)
    (clear object_0)
    (clear object_28)
    (clear object_15)
    (clear object_12)
    (clear object_4)
    (bottomcol object_25)
    (bottomcol object_35)
    (bottomcol object_5)
    (bottomcol object_2)
    (bottomcol object_14)
    (bottomcol object_20)
    (bottomcol object_28)
    (bottomcol object_34)
)
(:goal (and
    (home object_26)
    (home object_14)
    (home object_28)
    (home object_4)
)))
