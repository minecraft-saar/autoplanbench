(define (problem freecell-3-2)
(:domain freecell)
(:objects
    object_27
    object_21
    object_18
    object_28
    object_30
    object_14
    object_8
    object_4
    object_17
    object_31
    object_32
    object_9
    object_11
    object_20
    object_16
    object_22
    object_6
    object_0
    object_2
    object_13
    object_7
    object_10
    object_19
    object_12
    object_23
    object_3
    object_26
    object_15
    object_1
    object_24
    object_5
    object_25
    object_29
    object_33
)
(:init
    (value object_33 object_29)
    (value object_25 object_5)
    (value object_28 object_20)
    (value object_24 object_1)
    (value object_15 object_29)
    (value object_26 object_5)
    (value object_18 object_20)
    (value object_3 object_1)
    (value object_23 object_29)
    (value object_12 object_5)
    (value object_21 object_20)
    (value object_19 object_1)
    (value object_10 object_29)
    (value object_7 object_5)
    (value object_27 object_20)
    (value object_13 object_1)
    (successor object_1 object_29)
    (successor object_2 object_0)
    (successor object_6 object_2)
    (successor object_22 object_6)
    (successor object_16 object_22)
    (successor object_5 object_1)
    (successor object_20 object_5)
    (successor object_11 object_20)
    (successor object_9 object_11)
    (successor object_32 object_9)
    (successor object_31 object_32)
    (successor object_17 object_31)
    (successor object_0 object_17)
    (suit object_33 object_4)
    (suit object_25 object_4)
    (suit object_28 object_4)
    (suit object_24 object_4)
    (suit object_15 object_8)
    (suit object_26 object_8)
    (suit object_18 object_8)
    (suit object_3 object_8)
    (suit object_23 object_14)
    (suit object_12 object_14)
    (suit object_21 object_14)
    (suit object_19 object_14)
    (suit object_10 object_30)
    (suit object_7 object_30)
    (suit object_27 object_30)
    (suit object_13 object_30)
    (canstack object_25 object_18)
    (canstack object_25 object_21)
    (canstack object_24 object_26)
    (canstack object_24 object_12)
    (canstack object_26 object_28)
    (canstack object_26 object_27)
    (canstack object_3 object_25)
    (canstack object_3 object_7)
    (canstack object_12 object_28)
    (canstack object_12 object_27)
    (canstack object_19 object_25)
    (canstack object_19 object_7)
    (canstack object_7 object_18)
    (canstack object_7 object_21)
    (canstack object_13 object_26)
    (canstack object_13 object_12)
    (home object_33)
    (home object_15)
    (home object_23)
    (home object_10)
    (cellspace object_11)
    (colspace object_1)
    (on object_24 object_26)
    (on object_18 object_7)
    (on object_21 object_19)
    (on object_7 object_28)
    (on object_13 object_21)
    (clear object_25)
    (clear object_24)
    (clear object_18)
    (clear object_3)
    (clear object_12)
    (clear object_27)
    (clear object_13)
    (bottomcol object_25)
    (bottomcol object_28)
    (bottomcol object_26)
    (bottomcol object_3)
    (bottomcol object_12)
    (bottomcol object_19)
    (bottomcol object_27)
)
(:goal (and
    (home object_28)
    (home object_18)
    (home object_21)
    (home object_27)
)))
