(define (problem freecell-2-4)
(:domain freecell)
(:objects
    object_27
    object_2
    object_11
    object_14
    object_23
    object_25
    object_10
    object_12
    object_21
    object_9
    object_19
    object_7
    object_16
    object_8
    object_15
    object_6
    object_0
    object_24
    object_4
    object_1
    object_17
    object_28
    object_20
    object_18
    object_29
    object_26
    object_5
    object_13
    object_22
    object_3
)
(:init
    (value object_3 object_22)
    (value object_13 object_5)
    (value object_26 object_29)
    (value object_18 object_22)
    (value object_20 object_5)
    (value object_28 object_29)
    (value object_17 object_22)
    (value object_1 object_5)
    (value object_4 object_29)
    (value object_24 object_22)
    (value object_0 object_5)
    (value object_6 object_29)
    (successor object_29 object_22)
    (successor object_15 object_8)
    (successor object_16 object_15)
    (successor object_7 object_16)
    (successor object_19 object_7)
    (successor object_5 object_29)
    (successor object_9 object_5)
    (successor object_21 object_9)
    (successor object_12 object_21)
    (successor object_10 object_12)
    (successor object_25 object_10)
    (successor object_23 object_25)
    (successor object_8 object_23)
    (suit object_3 object_14)
    (suit object_13 object_14)
    (suit object_26 object_14)
    (suit object_18 object_11)
    (suit object_20 object_11)
    (suit object_28 object_11)
    (suit object_17 object_2)
    (suit object_1 object_2)
    (suit object_4 object_2)
    (suit object_24 object_27)
    (suit object_0 object_27)
    (suit object_6 object_27)
    (canstack object_26 object_20)
    (canstack object_26 object_1)
    (canstack object_28 object_13)
    (canstack object_28 object_0)
    (canstack object_4 object_13)
    (canstack object_4 object_0)
    (canstack object_6 object_20)
    (canstack object_6 object_1)
    (home object_3)
    (home object_18)
    (home object_17)
    (home object_24)
    (cellspace object_21)
    (colspace object_5)
    (on object_28 object_20)
    (on object_1 object_0)
    (clear object_13)
    (clear object_26)
    (clear object_28)
    (clear object_1)
    (clear object_4)
    (clear object_6)
    (bottomcol object_13)
    (bottomcol object_26)
    (bottomcol object_20)
    (bottomcol object_4)
    (bottomcol object_0)
    (bottomcol object_6)
)
(:goal (and
    (home object_13)
    (home object_20)
    (home object_1)
    (home object_0)
)))
