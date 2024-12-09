(define (problem freecell-4-2)
(:domain freecell)
(:objects
    object_30
    object_25
    object_27
    object_26
    object_2
    object_37
    object_0
    object_23
    object_29
    object_13
    object_36
    object_4
    object_20
    object_6
    object_32
    object_16
    object_1
    object_8
    object_33
    object_11
    object_7
    object_28
    object_14
    object_18
    object_22
    object_17
    object_34
    object_5
    object_9
    object_12
    object_3
    object_24
    object_31
    object_21
    object_19
    object_35
    object_10
    object_15
)
(:init
    (value object_15 object_10)
    (value object_35 object_19)
    (value object_23 object_8)
    (value object_26 object_1)
    (value object_21 object_31)
    (value object_24 object_10)
    (value object_3 object_19)
    (value object_0 object_8)
    (value object_27 object_1)
    (value object_12 object_31)
    (value object_9 object_10)
    (value object_5 object_19)
    (value object_37 object_8)
    (value object_25 object_1)
    (value object_34 object_31)
    (value object_17 object_10)
    (value object_22 object_19)
    (value object_2 object_8)
    (value object_30 object_1)
    (value object_18 object_31)
    (successor object_31 object_10)
    (successor object_14 object_28)
    (successor object_7 object_14)
    (successor object_11 object_7)
    (successor object_33 object_11)
    (successor object_19 object_31)
    (successor object_8 object_19)
    (successor object_1 object_8)
    (successor object_16 object_1)
    (successor object_32 object_16)
    (successor object_6 object_32)
    (successor object_20 object_6)
    (successor object_28 object_20)
    (suit object_15 object_4)
    (suit object_35 object_4)
    (suit object_23 object_4)
    (suit object_26 object_4)
    (suit object_21 object_4)
    (suit object_24 object_36)
    (suit object_3 object_36)
    (suit object_0 object_36)
    (suit object_27 object_36)
    (suit object_12 object_36)
    (suit object_9 object_13)
    (suit object_5 object_13)
    (suit object_37 object_13)
    (suit object_25 object_13)
    (suit object_34 object_13)
    (suit object_17 object_29)
    (suit object_22 object_29)
    (suit object_2 object_29)
    (suit object_30 object_29)
    (suit object_18 object_29)
    (canstack object_35 object_0)
    (canstack object_35 object_37)
    (canstack object_23 object_27)
    (canstack object_23 object_25)
    (canstack object_21 object_3)
    (canstack object_21 object_5)
    (canstack object_3 object_23)
    (canstack object_3 object_2)
    (canstack object_0 object_26)
    (canstack object_0 object_30)
    (canstack object_12 object_35)
    (canstack object_12 object_22)
    (canstack object_5 object_23)
    (canstack object_5 object_2)
    (canstack object_37 object_26)
    (canstack object_37 object_30)
    (canstack object_34 object_35)
    (canstack object_34 object_22)
    (canstack object_22 object_0)
    (canstack object_22 object_37)
    (canstack object_2 object_27)
    (canstack object_2 object_25)
    (canstack object_18 object_3)
    (canstack object_18 object_5)
    (home object_15)
    (home object_24)
    (home object_9)
    (home object_17)
    (cellspace object_1)
    (colspace object_31)
    (on object_21 object_3)
    (on object_0 object_22)
    (on object_37 object_34)
    (on object_25 object_30)
    (on object_34 object_27)
    (on object_22 object_23)
    (on object_2 object_26)
    (on object_30 object_35)
    (on object_18 object_37)
    (clear object_21)
    (clear object_0)
    (clear object_12)
    (clear object_5)
    (clear object_25)
    (clear object_2)
    (clear object_18)
    (bottomcol object_35)
    (bottomcol object_23)
    (bottomcol object_26)
    (bottomcol object_3)
    (bottomcol object_27)
    (bottomcol object_12)
    (bottomcol object_5)
)
(:goal (and
    (home object_26)
    (home object_27)
    (home object_25)
    (home object_30)
)))
