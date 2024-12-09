(define (problem freecell-3-1)
(:domain freecell)
(:objects
    object_24
    object_28
    object_19
    object_25
    object_30
    object_2
    object_15
    object_23
    object_8
    object_1
    object_4
    object_18
    object_12
    object_3
    object_21
    object_11
    object_31
    object_13
    object_26
    object_5
    object_20
    object_0
    object_14
    object_9
    object_10
    object_29
    object_7
    object_17
    object_33
    object_32
    object_6
    object_22
    object_27
    object_16
)
(:init
    (value object_16 object_27)
    (value object_22 object_6)
    (value object_25 object_3)
    (value object_32 object_33)
    (value object_17 object_27)
    (value object_7 object_6)
    (value object_19 object_3)
    (value object_29 object_33)
    (value object_10 object_27)
    (value object_9 object_6)
    (value object_28 object_3)
    (value object_14 object_33)
    (value object_0 object_27)
    (value object_20 object_6)
    (value object_24 object_3)
    (value object_5 object_33)
    (successor object_33 object_27)
    (successor object_26 object_13)
    (successor object_31 object_26)
    (successor object_11 object_31)
    (successor object_21 object_11)
    (successor object_6 object_33)
    (successor object_3 object_6)
    (successor object_12 object_3)
    (successor object_18 object_12)
    (successor object_4 object_18)
    (successor object_1 object_4)
    (successor object_8 object_1)
    (successor object_13 object_8)
    (suit object_16 object_23)
    (suit object_22 object_23)
    (suit object_25 object_23)
    (suit object_32 object_23)
    (suit object_17 object_15)
    (suit object_7 object_15)
    (suit object_19 object_15)
    (suit object_29 object_15)
    (suit object_10 object_2)
    (suit object_9 object_2)
    (suit object_28 object_2)
    (suit object_14 object_2)
    (suit object_0 object_30)
    (suit object_20 object_30)
    (suit object_24 object_30)
    (suit object_5 object_30)
    (canstack object_22 object_19)
    (canstack object_22 object_28)
    (canstack object_32 object_7)
    (canstack object_32 object_9)
    (canstack object_7 object_25)
    (canstack object_7 object_24)
    (canstack object_29 object_22)
    (canstack object_29 object_20)
    (canstack object_9 object_25)
    (canstack object_9 object_24)
    (canstack object_14 object_22)
    (canstack object_14 object_20)
    (canstack object_20 object_19)
    (canstack object_20 object_28)
    (canstack object_5 object_7)
    (canstack object_5 object_9)
    (home object_16)
    (home object_17)
    (home object_10)
    (home object_0)
    (cellspace object_12)
    (colspace object_33)
    (on object_22 object_32)
    (on object_25 object_28)
    (on object_32 object_5)
    (on object_19 object_22)
    (on object_24 object_20)
    (clear object_25)
    (clear object_7)
    (clear object_19)
    (clear object_29)
    (clear object_9)
    (clear object_14)
    (clear object_24)
    (bottomcol object_7)
    (bottomcol object_29)
    (bottomcol object_9)
    (bottomcol object_28)
    (bottomcol object_14)
    (bottomcol object_20)
    (bottomcol object_5)
)
(:goal (and
    (home object_25)
    (home object_19)
    (home object_28)
    (home object_24)
)))
