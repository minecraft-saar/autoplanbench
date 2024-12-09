(define (problem freecell-3-4)
(:domain freecell)
(:objects
    object_18
    object_14
    object_32
    object_2
    object_13
    object_28
    object_7
    object_10
    object_22
    object_29
    object_24
    object_6
    object_19
    object_27
    object_4
    object_17
    object_30
    object_15
    object_26
    object_31
    object_25
    object_9
    object_5
    object_1
    object_3
    object_11
    object_20
    object_33
    object_23
    object_8
    object_0
    object_12
    object_16
    object_21
)
(:init
    (value object_21 object_16)
    (value object_12 object_0)
    (value object_2 object_27)
    (value object_8 object_23)
    (value object_33 object_16)
    (value object_20 object_0)
    (value object_32 object_27)
    (value object_11 object_23)
    (value object_3 object_16)
    (value object_1 object_0)
    (value object_14 object_27)
    (value object_5 object_23)
    (value object_9 object_16)
    (value object_25 object_0)
    (value object_18 object_27)
    (value object_31 object_23)
    (successor object_23 object_16)
    (successor object_26 object_15)
    (successor object_30 object_26)
    (successor object_17 object_30)
    (successor object_4 object_17)
    (successor object_0 object_23)
    (successor object_27 object_0)
    (successor object_19 object_27)
    (successor object_6 object_19)
    (successor object_24 object_6)
    (successor object_29 object_24)
    (successor object_22 object_29)
    (successor object_15 object_22)
    (suit object_21 object_10)
    (suit object_12 object_10)
    (suit object_2 object_10)
    (suit object_8 object_10)
    (suit object_33 object_7)
    (suit object_20 object_7)
    (suit object_32 object_7)
    (suit object_11 object_7)
    (suit object_3 object_28)
    (suit object_1 object_28)
    (suit object_14 object_28)
    (suit object_5 object_28)
    (suit object_9 object_13)
    (suit object_25 object_13)
    (suit object_18 object_13)
    (suit object_31 object_13)
    (canstack object_12 object_32)
    (canstack object_12 object_14)
    (canstack object_8 object_20)
    (canstack object_8 object_1)
    (canstack object_20 object_2)
    (canstack object_20 object_18)
    (canstack object_11 object_12)
    (canstack object_11 object_25)
    (canstack object_1 object_2)
    (canstack object_1 object_18)
    (canstack object_5 object_12)
    (canstack object_5 object_25)
    (canstack object_25 object_32)
    (canstack object_25 object_14)
    (canstack object_31 object_20)
    (canstack object_31 object_1)
    (home object_21)
    (home object_33)
    (home object_3)
    (home object_9)
    (cellspace object_19)
    (colspace object_23)
    (on object_2 object_18)
    (on object_20 object_14)
    (on object_11 object_20)
    (on object_1 object_25)
    (on object_31 object_32)
    (clear object_12)
    (clear object_2)
    (clear object_8)
    (clear object_11)
    (clear object_1)
    (clear object_5)
    (clear object_31)
    (bottomcol object_12)
    (bottomcol object_8)
    (bottomcol object_32)
    (bottomcol object_14)
    (bottomcol object_5)
    (bottomcol object_25)
    (bottomcol object_18)
)
(:goal (and
    (home object_2)
    (home object_32)
    (home object_14)
    (home object_18)
)))
