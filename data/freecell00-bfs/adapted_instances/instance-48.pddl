(define (problem freecell-3-3)
(:domain freecell)
(:objects
    object_7
    object_5
    object_4
    object_22
    object_25
    object_32
    object_3
    object_18
    object_24
    object_29
    object_23
    object_12
    object_2
    object_28
    object_31
    object_15
    object_1
    object_9
    object_17
    object_21
    object_11
    object_27
    object_19
    object_30
    object_13
    object_0
    object_14
    object_16
    object_10
    object_20
    object_26
    object_33
    object_8
    object_6
)
(:init
    (value object_6 object_8)
    (value object_33 object_26)
    (value object_22 object_28)
    (value object_20 object_10)
    (value object_16 object_8)
    (value object_14 object_26)
    (value object_4 object_28)
    (value object_0 object_10)
    (value object_13 object_8)
    (value object_30 object_26)
    (value object_5 object_28)
    (value object_19 object_10)
    (value object_27 object_8)
    (value object_11 object_26)
    (value object_7 object_28)
    (value object_21 object_10)
    (successor object_10 object_8)
    (successor object_17 object_9)
    (successor object_1 object_17)
    (successor object_15 object_1)
    (successor object_31 object_15)
    (successor object_26 object_10)
    (successor object_28 object_26)
    (successor object_2 object_28)
    (successor object_12 object_2)
    (successor object_23 object_12)
    (successor object_29 object_23)
    (successor object_24 object_29)
    (successor object_9 object_24)
    (suit object_6 object_18)
    (suit object_33 object_18)
    (suit object_22 object_18)
    (suit object_20 object_18)
    (suit object_16 object_3)
    (suit object_14 object_3)
    (suit object_4 object_3)
    (suit object_0 object_3)
    (suit object_13 object_32)
    (suit object_30 object_32)
    (suit object_5 object_32)
    (suit object_19 object_32)
    (suit object_27 object_25)
    (suit object_11 object_25)
    (suit object_7 object_25)
    (suit object_21 object_25)
    (canstack object_33 object_4)
    (canstack object_33 object_5)
    (canstack object_20 object_14)
    (canstack object_20 object_30)
    (canstack object_14 object_22)
    (canstack object_14 object_7)
    (canstack object_0 object_33)
    (canstack object_0 object_11)
    (canstack object_30 object_22)
    (canstack object_30 object_7)
    (canstack object_19 object_33)
    (canstack object_19 object_11)
    (canstack object_11 object_4)
    (canstack object_11 object_5)
    (canstack object_21 object_14)
    (canstack object_21 object_30)
    (home object_6)
    (home object_16)
    (home object_13)
    (home object_27)
    (cellspace object_2)
    (colspace object_10)
    (on object_33 object_21)
    (on object_5 object_11)
    (on object_19 object_20)
    (on object_7 object_0)
    (on object_21 object_14)
    (clear object_33)
    (clear object_22)
    (clear object_4)
    (clear object_30)
    (clear object_5)
    (clear object_19)
    (clear object_7)
    (bottomcol object_22)
    (bottomcol object_20)
    (bottomcol object_14)
    (bottomcol object_4)
    (bottomcol object_0)
    (bottomcol object_30)
    (bottomcol object_11)
)
(:goal (and
    (home object_22)
    (home object_4)
    (home object_5)
    (home object_7)
)))
