(define (problem freecell-2-3)
(:domain freecell)
(:objects
    object_5
    object_19
    object_23
    object_0
    object_26
    object_6
    object_27
    object_12
    object_22
    object_3
    object_13
    object_29
    object_10
    object_24
    object_11
    object_18
    object_4
    object_21
    object_15
    object_2
    object_25
    object_28
    object_7
    object_1
    object_17
    object_9
    object_20
    object_14
    object_8
    object_16
)
(:init
    (value object_16 object_8)
    (value object_14 object_20)
    (value object_9 object_17)
    (value object_1 object_8)
    (value object_7 object_20)
    (value object_28 object_17)
    (value object_25 object_8)
    (value object_2 object_20)
    (value object_15 object_17)
    (value object_21 object_8)
    (value object_4 object_20)
    (value object_18 object_17)
    (successor object_17 object_8)
    (successor object_11 object_24)
    (successor object_10 object_11)
    (successor object_29 object_10)
    (successor object_13 object_29)
    (successor object_20 object_17)
    (successor object_3 object_20)
    (successor object_22 object_3)
    (successor object_12 object_22)
    (successor object_27 object_12)
    (successor object_6 object_27)
    (successor object_26 object_6)
    (successor object_24 object_26)
    (suit object_16 object_0)
    (suit object_14 object_0)
    (suit object_9 object_0)
    (suit object_1 object_23)
    (suit object_7 object_23)
    (suit object_28 object_23)
    (suit object_25 object_19)
    (suit object_2 object_19)
    (suit object_15 object_19)
    (suit object_21 object_5)
    (suit object_4 object_5)
    (suit object_18 object_5)
    (canstack object_9 object_7)
    (canstack object_9 object_2)
    (canstack object_28 object_14)
    (canstack object_28 object_4)
    (canstack object_15 object_14)
    (canstack object_15 object_4)
    (canstack object_18 object_7)
    (canstack object_18 object_2)
    (home object_16)
    (home object_1)
    (home object_25)
    (home object_21)
    (cellspace object_22)
    (colspace object_3)
    (on object_14 object_18)
    (on object_15 object_9)
    (on object_18 object_7)
    (clear object_14)
    (clear object_28)
    (clear object_2)
    (clear object_15)
    (clear object_4)
    (bottomcol object_9)
    (bottomcol object_7)
    (bottomcol object_28)
    (bottomcol object_2)
    (bottomcol object_4)
)
(:goal (and
    (home object_14)
    (home object_7)
    (home object_2)
    (home object_4)
)))
