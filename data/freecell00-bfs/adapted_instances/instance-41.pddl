(define (problem freecell-2-1)
(:domain freecell)
(:objects
    object_3
    object_23
    object_7
    object_22
    object_27
    object_15
    object_24
    object_25
    object_10
    object_13
    object_5
    object_2
    object_21
    object_6
    object_29
    object_11
    object_0
    object_16
    object_14
    object_20
    object_28
    object_8
    object_26
    object_18
    object_12
    object_17
    object_19
    object_4
    object_9
    object_1
)
(:init
    (value object_1 object_9)
    (value object_4 object_19)
    (value object_17 object_12)
    (value object_18 object_9)
    (value object_26 object_19)
    (value object_8 object_12)
    (value object_28 object_9)
    (value object_20 object_19)
    (value object_14 object_12)
    (value object_16 object_9)
    (value object_0 object_19)
    (value object_11 object_12)
    (successor object_12 object_9)
    (successor object_29 object_6)
    (successor object_21 object_29)
    (successor object_2 object_21)
    (successor object_5 object_2)
    (successor object_19 object_12)
    (successor object_13 object_19)
    (successor object_10 object_13)
    (successor object_25 object_10)
    (successor object_24 object_25)
    (successor object_15 object_24)
    (successor object_27 object_15)
    (successor object_6 object_27)
    (suit object_1 object_22)
    (suit object_4 object_22)
    (suit object_17 object_22)
    (suit object_18 object_7)
    (suit object_26 object_7)
    (suit object_8 object_7)
    (suit object_28 object_23)
    (suit object_20 object_23)
    (suit object_14 object_23)
    (suit object_16 object_3)
    (suit object_0 object_3)
    (suit object_11 object_3)
    (canstack object_17 object_26)
    (canstack object_17 object_20)
    (canstack object_8 object_4)
    (canstack object_8 object_0)
    (canstack object_14 object_4)
    (canstack object_14 object_0)
    (canstack object_11 object_26)
    (canstack object_11 object_20)
    (home object_1)
    (home object_18)
    (home object_28)
    (home object_16)
    (cellspace object_10)
    (colspace object_19)
    (on object_4 object_17)
    (on object_17 object_11)
    (clear object_4)
    (clear object_26)
    (clear object_8)
    (clear object_20)
    (clear object_14)
    (clear object_0)
    (bottomcol object_26)
    (bottomcol object_8)
    (bottomcol object_20)
    (bottomcol object_14)
    (bottomcol object_0)
    (bottomcol object_11)
)
(:goal (and
    (home object_4)
    (home object_26)
    (home object_20)
    (home object_0)
)))
