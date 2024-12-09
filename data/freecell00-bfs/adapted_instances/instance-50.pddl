(define (problem freecell-3-5)
(:domain freecell)
(:objects
    object_25
    object_8
    object_20
    object_29
    object_32
    object_24
    object_14
    object_5
    object_17
    object_18
    object_33
    object_16
    object_11
    object_12
    object_6
    object_2
    object_1
    object_3
    object_22
    object_7
    object_21
    object_0
    object_31
    object_27
    object_4
    object_30
    object_9
    object_15
    object_10
    object_28
    object_13
    object_23
    object_26
    object_19
)
(:init
    (value object_19 object_26)
    (value object_23 object_13)
    (value object_29 object_12)
    (value object_28 object_10)
    (value object_15 object_26)
    (value object_9 object_13)
    (value object_20 object_12)
    (value object_30 object_10)
    (value object_4 object_26)
    (value object_27 object_13)
    (value object_8 object_12)
    (value object_31 object_10)
    (value object_0 object_26)
    (value object_21 object_13)
    (value object_25 object_12)
    (value object_7 object_10)
    (successor object_10 object_26)
    (successor object_22 object_3)
    (successor object_1 object_22)
    (successor object_2 object_1)
    (successor object_6 object_2)
    (successor object_13 object_10)
    (successor object_12 object_13)
    (successor object_11 object_12)
    (successor object_16 object_11)
    (successor object_33 object_16)
    (successor object_18 object_33)
    (successor object_17 object_18)
    (successor object_3 object_17)
    (suit object_19 object_5)
    (suit object_23 object_5)
    (suit object_29 object_5)
    (suit object_28 object_5)
    (suit object_15 object_14)
    (suit object_9 object_14)
    (suit object_20 object_14)
    (suit object_30 object_14)
    (suit object_4 object_24)
    (suit object_27 object_24)
    (suit object_8 object_24)
    (suit object_31 object_24)
    (suit object_0 object_32)
    (suit object_21 object_32)
    (suit object_25 object_32)
    (suit object_7 object_32)
    (canstack object_23 object_20)
    (canstack object_23 object_8)
    (canstack object_28 object_9)
    (canstack object_28 object_27)
    (canstack object_9 object_29)
    (canstack object_9 object_25)
    (canstack object_30 object_23)
    (canstack object_30 object_21)
    (canstack object_27 object_29)
    (canstack object_27 object_25)
    (canstack object_31 object_23)
    (canstack object_31 object_21)
    (canstack object_21 object_20)
    (canstack object_21 object_8)
    (canstack object_7 object_9)
    (canstack object_7 object_27)
    (home object_19)
    (home object_15)
    (home object_4)
    (home object_0)
    (cellspace object_11)
    (colspace object_10)
    (on object_29 object_21)
    (on object_28 object_20)
    (on object_30 object_7)
    (on object_27 object_25)
    (on object_25 object_31)
    (clear object_23)
    (clear object_29)
    (clear object_28)
    (clear object_9)
    (clear object_30)
    (clear object_27)
    (clear object_8)
    (bottomcol object_23)
    (bottomcol object_9)
    (bottomcol object_20)
    (bottomcol object_8)
    (bottomcol object_31)
    (bottomcol object_21)
    (bottomcol object_7)
)
(:goal (and
    (home object_29)
    (home object_20)
    (home object_8)
    (home object_25)
)))
